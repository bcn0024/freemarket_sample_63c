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
  end

end
