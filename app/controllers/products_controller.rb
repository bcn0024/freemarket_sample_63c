class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :myproduct, :edit, :destroy, :update, :purchase, :payjp, :move_to_index_purchase, :move_to_index_edit,:cardnew]
  before_action :move_to_login, except: [:index, :show]
  before_action :move_to_index_purchase, only: [:purchase]
  before_action :move_to_index_edit, only: [:edit, :update, :destroy]
  before_action :set_card, only: [:cardshow,:purchase,:payjp]

  require 'payjp'

  def index
    @product = Product.new
    @products = Product.limit(10).order('created_at DESC')
    @ladies_products = Product.where("category_id >= 2 and category_id < 197")
    @mens_products = Product.where("category_id >= 198 and category_id < 342")
    @devise_products = Product.where("category_id >= 890 and category_id < 974")
    @toy_products = Product.where("category_id >= 677 and category_id < 789")
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
    @brand = @product.brand
    @category = @product.category
    @products = @product.user.products.limit(6)
  end

  def myproduct
    @images = @product.images
    @user = @product.user
    @brand = @product.brand
    @category = @product.category
    @products = @product.user.products.limit(6)
    @parents = Category.where(ancestry: nil).order("id ASC")
  end

  def create
    @product = Product.new(product_params)
    @images = @product.images
    if @images.length != 0
      @product.save
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
    @images = @product.images
    @parents = Category.where(ancestry: nil).order("id ASC")
  end

  def update
    @product.update(product_params)
    redirect_to myproduct_product_path(@product.id)
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
    Payjp.api_key = 'sk_test_bd4e50db2758c85468065f4c'
    customer = Payjp::Customer.retrieve(@card.customer_id)
    @default_card_information = customer.cards.retrieve(@card.card_id)
    @card_brand = @default_card_information.brand
      case @card_brand
      when "Visa"
        @card_src = "visa.svg"
      when "JCB"
        @card_src = "jcb.svg"
      when "MasterCard"
        @card_src = "master-card.svg"
      when "American Express"
        @card_src = "american_express.svg"
      when "Diners Club"
        @card_src = "dinersclub.svg"
      when "Discover"
        @card_src = "discover.svg"
      end
    end
  end

  def cardnew
    @card = Card.where(user_id: current_user.id)
  end

  def cardshow
   if @card.blank?
     redirect_to action: "cardnew"
   else
    Payjp.api_key = 'sk_test_bd4e50db2758c85468065f4c'
    customer = Payjp::Customer.retrieve(@card.customer_id)
    @default_card_information = customer.cards.retrieve(@card.card_id)
    @card_brand = @default_card_information.brand
      case @card_brand
      when "Visa"
        @card_src = "visa.svg"
      when "JCB"
        @card_src = "jcb.svg"
      when "MasterCard"
        @card_src = "master-card.svg"
      when "American Express"
        @card_src = "american_express.svg"
      when "Diners Club"
        @card_src = "dinersclub.svg"
      when "Discover"
        @card_src = "discover.svg"
      end
   end
 end

 def pay

  Payjp.api_key = 'sk_test_bd4e50db2758c85468065f4c'

  if params['payjp-token'].blank?
    redirect_to  cardnew_products_path(current_user.id)
  else
    customer = Payjp::Customer.create(
    description: '登録テスト',
    email: current_user.email,
    card: params['payjp-token'],
    metadata: {user_id: current_user.id}
    )
    @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
    if @card.save
      redirect_to cardshow_products_path(current_user.id)
    else
      redirect_to  cardnew_products_path(current_user.id)
    end
  end
end

  def payjp
    Payjp.api_key = 'sk_test_bd4e50db2758c85468065f4c'
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
      :category_id,
      :status,
      :postage,
      :delibery,
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