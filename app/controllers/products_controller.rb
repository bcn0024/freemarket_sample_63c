class ProductsController < ApplicationController

  def index
    @user = User.new
    @products = Product.all
    @image = Image.first

  end

  def new
    @product = Product.new
  end


  def create 
    # binding.pry
    Product.create(product_params)
    redirect_to :back
  end

  def destroy
    binding.pry
    @product = Product.find(params[:id])
    @product.destroy
  end


  private
  def product_params
    params.require(:product).permit(:name, :description, :postage, :region, :arrival_date, :price)
  end
end
