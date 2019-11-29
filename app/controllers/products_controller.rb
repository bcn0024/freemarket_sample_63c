class ProductsController < ApplicationController

  def index
    
  end

  def new
    @product = Product.new
  end

  def create 
    # binding.pry
    Product.create(product_params)
    redirect_to root_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :status, :postage, :region, :arrival_date, :price)
  end
end
