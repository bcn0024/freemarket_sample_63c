class UsersController < ApplicationController
  def index
    
  end

  def new
    @user = User.new
  end

  def kaiinzyouhou


  end


  def show

  end

  def destoroy
    user = User.find(params[:id])
    user.destoroy
    redirect_to root_path
  end
end
