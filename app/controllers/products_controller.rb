class ProductsController < ApplicationController

  def index
    @user = User.new
  end

  def new
    @product = Product.new
  end

  def create
  end
end
