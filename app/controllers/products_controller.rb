class ProductsController < ApplicationController

  def index
    @user = User.new
    @products = Product.all
    @image = Image.first

  end

  def new
    @product = Product.new
  end

  def myproduct
    @product = Product.find(params[:id])
  end

  def create 
    # binding.pry
    Product.create(product_params)
    redirect_to :back
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to  root_path
  end


  private
  def product_params
    params.require(:product).permit(:name, :description, :postage, :region, :arrival_date, :price)
  end
end
