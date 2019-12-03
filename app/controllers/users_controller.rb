class UsersController < ApplicationController
  def index
    
  end

  def new
    @user = User.new
  end

  def exhibitedit
    @product = Product.new
  end

end
