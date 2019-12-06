class AddressesController < ApplicationController

  def update
    @user = User.find(params[:id])
    @address = @user.address
    @address.update(address_params)
    redirect_to edit_user_path(@user.id)
  end

  private
  def address_params
    params.require(:address).permit(:postal_code, :prefectures, :municipalities, :address, :building)
  end
end

