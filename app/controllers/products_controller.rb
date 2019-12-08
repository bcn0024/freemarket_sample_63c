class ProductsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_product, only: [:show,:myprocuct,:destroy,:edit,:update,:purchase]
  before_action :set_card, only: [:cardshow,:purchase]
  require 'payjp'

  def index
    @products = Product.limit(10).order('name DESC')
  end

  def new
    @product = Product.new
  end

  def show
    @images = @product.images
    @user = @product.user
    @products = @product.user.products.limit(6)
    
  end

  def myproduct
    @images = @product.images
    @user = @product.user
    @products = @product.user.products.limit(6)
    
  end

  def create 
    Product.create(product_params)
    redirect_to :back
  end

  def destroy
    @product.destroy
    redirect_to  root_path
  end

  def edit
  end

  def update
    product.update(product_params)
    redirect_to myproduct_product_path(product.id)
  end

  def purchase
    @images = @product.images
    @user = @product.user
    @products = @product.user.products.limit(6)
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    customer = Payjp::Customer.retrieve(@card.customer_id)
    @default_card_information = customer.cards.retrieve(@card.card_id)
  end

  def cardnew
    card = Card.where(user_id: current_user.id)
    redirect_to action: "cardshow" if card.exists?
  end

  def cardshow
    #Cardのデータpayjpに送り情報を取り出します
   if card.blank?
     redirect_to action: "cardnew" 
   else
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    customer = Payjp::Customer.retrieve(card.customer_id)
    @default_card_information = customer.cards.retrieve(card.card_id)
   end
 end
 
 def pay #payjpとCardのデータベース作成を実施します。
  Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
  if params['payjp-token'].blank?
    redirect_to  cardnew_products_path
  else
    customer = Payjp::Customer.create(
    description: '登録テスト', #なくてもOK
    email: current_user.email, #なくてもOK
    card: params['payjp-token'],
    metadata: {user_id: current_user.id}
    ) #念の為metadataにuser_idを入れましたがなくてもOK
    @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
    if @card.save
      redirect_to cardshow_products_path
    else
      redirect_to  cardnew_products_path
    end
  end
end

  def payjp
    @product = Product.find(params[:id])
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(currency: 'jpy', amount: @product.price, card: params['payjp-token'])
    redirect_to root_path, notice: "支払いが完了しました"
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :postage, :region, :arrival_date, :price)
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def set_card
    card = Card.where(user_id: current_user.id).first
  end
end
