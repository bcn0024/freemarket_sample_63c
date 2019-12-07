class ProductsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  require 'payjp'
  def index
    @products = Product.limit(10).order('name DESC')
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
    @images = @product.images
    @user = @product.user
    @products = @product.user.products.limit(6)
  end

  def myproduct
    @product = Product.find(params[:id])
    @images = @product.images
    @user = @product.user
    @products = @product.user.products.limit(6)
  end

  def create 
    Product.create(product_params)
    redirect_to :back
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to  root_path
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to myproduct_product_path(product.id)
  end

  def purchase
    @product = Product.find(params[:id])
    @images = @product.images
    @user = @product.user
    @products = @product.user.products.limit(6)
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
end

