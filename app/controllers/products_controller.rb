class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :myproduct, :edit, :update, :purchase, :payjp]
  before_action :move_to_login, except: [:index, :show]
  before_action :move_to_index_purchase, only: [:purchase]
  before_action :move_to_index_edit, only: [:edit, :update, :destroy]

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
  end

  def payjp
    Payjp.api_key = "PAYJP_"
    Payjp::Charge.create(
      amount: 809,
      card: params['payjp-token'],
      currency: 'jpy'
    )
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
    @product = Product.find(params[:id])
    redirect_to root_path if user_signed_in? && current_user.id == @product.user.id
  end
  
  def move_to_index_edit
    @product = Product.find(params[:id])
    redirect_to root_path unless user_signed_in? && current_user.id == @product.user.id
  end

end
