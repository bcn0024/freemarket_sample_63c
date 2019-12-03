class MypageController < ApplicationController
  def index
  end


  def show
  end
     
  def destroy
    binding.pry
    @product = Product.find(params[:id])
    @product.destroy
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :postage, :region, :arrival_date, :price)
  end
end
