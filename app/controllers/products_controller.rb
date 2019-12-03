class ProductsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

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
    redirect_to root_path
  end


  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :postage, :region, :arrival_date, :price)
  end
end
