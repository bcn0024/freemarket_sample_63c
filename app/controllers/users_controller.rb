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



  def selling
    @user = User.find(params[:id])
    @products = @user.products
    @sellings = @products.where('buyer_id is NULL')
  end

  def soldout
    @user = User.find(params[:id])
    @products = @user.products
    @soldouts = @products.where('buyer_id is not NULL')
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

