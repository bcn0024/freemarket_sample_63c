class ProductsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @user = User.new
    @products = Product.all
    @image = Image.first

  end

  def new
    @product = Product.new
  end

  def myproduct
    @product = Product.find(params[:id])
  end

  def create 
    Product.create(product_params)
    redirect_to :back
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to  root_path
  end

  def purchase
    @product = Product.find(params[:id])
    Payjp.api_key = PAYJP_SECRET_KEY
    Payjp::Charge.create(currency: 'jpy', amount: 1000, card: params['payjp-token'])
    redirect_to root_path, notice: "支払いが完了しました"
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :postage, :region, :arrival_date, :price)
  end
end
