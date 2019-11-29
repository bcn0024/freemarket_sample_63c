class AddressesController < ApplicationController
  
  
  def new
    @address = Address.new
    @user = User.first(params[:id])
    # @user = User.find(params[:id])
  end

  def create
    binding.pry
    Address.create
  end




 


end

