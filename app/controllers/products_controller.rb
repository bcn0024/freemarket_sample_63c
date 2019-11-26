class ProductsController < ApplicationController

  def index
  end

  def firstchoice
  end

  def new
    @product = Product.new
  end
end
