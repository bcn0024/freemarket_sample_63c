class UsersController < ApplicationController
  def index
    
  end

  def new
    @user = User.new
  end


  def show
    @user = User.find(params[:id])
    @products = @user.products
  end

  def howtopay
    @user = User.find(params[:id])
  end

  def creditnew
    @user = User.find(params[:id])
  end

  def mypagemore
    @user = User.find(params[:id])
    @products = @user.products
  end

  def logout
    @user = User.find(params[:id])
    @products = @user.products
  end

  def profile
    @user = User.find(params[:id])
    @products = @user.products
  end

  def edit
    @user = User.find(params[:id])
    @address = @user.address
  end

  def destoroy
    user = User.find(params[:id])
    user.destoroy
    redirect_to root_path
  end
  
  
end

