class ProductsController < ApplicationController

  before_action :move_to_index, except: [:index, :show, :new, :create, :children, :grandchildren]
  before_action :set_product, only:[:show,:myproduct,:destroy,:edit,:update,:purchase,:payjp]
  before_action :set_card, only:[:cardshow,:purchase]

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
    # binding.pry
    @product = Product.new(product_params)
    # binding.pry
    @product.save!


    # brand_id = Brand.find(@product.id).id  #Shipmentテーブルのidを取り出す
    # product = Product.find(@product.id)    #作成したItemのidを取り出す
    # product.update(brand_id: brand_id)     #Itemテーブルにshipment_idのカラムを入れる

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
  end


  def payjp
    Payjp.api_key = "PAYJP_"
    Payjp::Charge.create(
      amount: 809,
      card: params['payjp-token'],
      currency: 'jpy'
    )
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
      # :brand_id,
      :region,
      :arrival_date,
      :price,
      brand_attributes: [:id, :name],
      # :size,
      images_attributes:[:id, :image]
    ).merge(user_id: current_user.id)
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def set_card
    @card = Card.where(user_id: current_user.id).first
  end
end
