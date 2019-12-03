class ProductsController < ApplicationController

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

  def create 
    Product.create(product_params)
    redirect_to root_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :postage, :region, :arrival_date, :price)
  end
end
