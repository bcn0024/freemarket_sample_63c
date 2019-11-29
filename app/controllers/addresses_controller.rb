class AddressesController < ApplicationController
  before_action :signup
  
  def new
    @address = Address.new
  end

  def create
    binding.pry
    Address.create
  end


  private

  def signup
    @signup = Signup.find(params[:id])
  end


end

