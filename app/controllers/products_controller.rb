class ProductsController < ApplicationController

  def index
  end

  def top
  end

  def new
    @product = Product.new
  end
end
