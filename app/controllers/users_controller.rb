class UsersController < ApplicationController
  def index
    
  end

  def new
    @user = User.new
  end
  
  def exhibit

  end

  def show
  @user = User.find(params[:id])
  @products = @user.products
  end
end
