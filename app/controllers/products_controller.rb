class ProductsController < ApplicationController
  
  before_action :set_product, only: [:show,:myprocuct,:destroy,:edit,:update,:purchase]
  before_action :move_to_index, except: [:index, :show, :new, :create, :children, :grandchildren]
  
  require 'payjp'
  
  def index
    @products = Product.limit(10).order('created_at DESC')
  end

  def new
    @product = Product.new
    10.times { @product.images.build }
    @parents = Category.where(ancestry: nil).order("id ASC")
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
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      redirect_back(fallback_location: products_path)
    end
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


  def children
    @children = Category.find(params[:parent_id]).children
    respond_to do |format|
      format.html
      format.json
    end
  end

  def grandchildren
    @grandchildren = Category.find(params[:children_id]).children
    respond_to do |format|
      format.html
      format.json
    end
  end

  def purchase
    @images = @product.images
    @user = @product.user
    @products = @product.user.products.limit(6)
    @card = Card.where(user_id: current_user.id).first
    
    if @card.blank?
    else
      Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end

  def cardnew
    card = Card.where(user_id: current_user.id)
    redirect_to action: "cardshow" if card.exists?
  end

  def cardshow
    #Cardのデータpayjpに送り情報を取り出します
   card = Card.where(user_id: current_user.id).first
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
    redirect_to  "/products/cardnew"
  else
    customer = Payjp::Customer.create(
    description: '登録テスト', #なくてもOK
    email: current_user.email, #なくてもOK
    card: params['payjp-token'],
    metadata: {user_id: current_user.id}
    ) #念の為metadataにuser_idを入れましたがなくてもOK
    @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
    if @card.save
      redirect_to "/products/cardshow"
    else
      redirect_to  "/products/cardnew"
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
    params.require(:product).permit(
      :name,
      :description,
      :postage,
      :category_id,
      :region,
      :arrival_date,
      :price,
      :size,
      images_attributes:[:id, :image]
    ).merge(user_id: current_user.id)
  end

  def set_product
    @product = Product.find(params[:id])
  end
