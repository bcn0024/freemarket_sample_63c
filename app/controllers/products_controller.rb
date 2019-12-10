class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :myproduct, :edit, :update, :purchase, :payjp, :move_to_index_purchase, :move_to_index_edit,:cardnew]
  before_action :move_to_login, except: [:index, :show]
  before_action :move_to_index_purchase, only: [:purchase]
  before_action :move_to_index_edit, only: [:edit, :update, :destroy]
  before_action :set_card, only: [:cardshow,:purchase,:payjp]
 
  require 'payjp'

  def index
    @products = Product.limit(10).order('created_at DESC')
  end

  def new
    @product = Product.new
    @product.images.build
    @product.build_brand
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
    @product.save!
    if @product.save
      redirect_to root_path
    else
      redirect_to new_product_path
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
    if @card.blank?
    else
    @images = @product.images
    @user = @product.user
    @products = @product.user.products.limit(6)
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    customer = Payjp::Customer.retrieve(@card.customer_id)
    @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end

  def cardnew
    @card = Card.where(user_id: current_user.id)
    # redirect_to action: "cardshow" if @card.exists?
  end

  def cardshow
    #Cardのデータpayjpに送り情報を取り出します
   if @card.blank?
     redirect_to action: "cardnew"
   else
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    customer = Payjp::Customer.retrieve(@card.customer_id)
    @default_card_information = customer.cards.retrieve(@card.card_id)
   end
 end

 def pay #payjpとCardのデータベース作成を実施します。

  Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']

  if params['payjp-token'].blank?
    redirect_to  cardnew_products_path(current_user.id)
  else
    customer = Payjp::Customer.create(
    description: '登録テスト', #なくてもOK
    email: current_user.email, #なくてもOK
    card: params['payjp-token'],
    metadata: {user_id: current_user.id}
    ) #念の為metadataにuser_idを入れましたがなくてもOK
    @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
    if @card.save
      redirect_to cardshow_products_path(current_user.id)
    else
      redirect_to  cardnew_products_path(current_user.id)
    end
  end
end

  def payjp
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(currency: 'jpy',customer: @card.customer_id ,amount: @product.price, card: params['payjp-token'])
    redirect_to root_path, notice: "支払いが完了しました"
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private

  def product_params
    params.require(:product).permit(
      :name,
      :description,
      :status,
      :postage,
      :category_id,
      :region,
      :arrival_date,
      :price,
      brand_attributes: [:id, :name],
      images_attributes:[:id, :image]
    ).merge(user_id: current_user.id)
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def move_to_login
    redirect_to new_user_session_path unless user_signed_in?
  end

  def move_to_index_purchase
    redirect_to root_path if user_signed_in? && current_user.id == @product.user.id
  end

  def move_to_index_edit
    redirect_to root_path unless user_signed_in? && current_user.id == @product.user.id
  end

  def set_card
    @card = Card.where(user_id: current_user.id).first
  end

end
