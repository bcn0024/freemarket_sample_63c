class ProductsController < ApplicationController

  before_action :move_to_index, except: [:index, :show, :new, :create, :children, :grandchildren]


  def index
    @products = Product.limit(10).order('name DESC')
  end

  def new
    @product = Product.new
    10.times { @product.images.build }

    @parents = Category.where(ancestry: nil).order("id ASC")
  end

  def show
    @product = Product.find(params[:id])
    @images = @product.images
    @user = @product.user
    @products = @product.user.products.limit(6)
  end

  def myproduct
    @product = Product.find(params[:id])
    @images = @product.images
    @user = @product.user
    @products = @product.user.products.limit(6)
  end

  def create
    # binding.pry
    @product = Product.new(product_params)
    @product.save
    redirect_to root_path
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to  root_path
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to myproduct_product_path(product.id)
  end


  def children
    respond_to do |format|
      format.html
      format.json do
        @children = Category.find(params[:parent_id]).children
      end
    end
  end

  def grandchildren
    @grandchildren = Category.find(params[:children_id]).children
    respond_to do |format|
      format.html
      format.json
    end

  def purchase
    @product = Product.find(params[:id])
    @images = @product.images
    @user = @product.user
    @products = @product.user.products.limit(6)
  end
  def payjp
    # Payjp.api_key = PAYJP_sk_test_bd4e50db2758c85468065f4c
    # Payjp::Charge.create(currency: 'jpy', amount: 1000, card: params['payjp-token'])
    # redirect_to root_path, notice: "支払いが完了しました"
    Payjp.api_key = "PAYJP_"
    Payjp::Charge.create(
      amount: 809, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private
  def product_params
    params.require(:product).permit(
      :name,
      :description,
      :category_id,
      :region,
      :arrival_date,
      :price,
      images_attributes:[:id, :image]
    ).merge(user_id: current_user.id)
  end
end

