class ProductsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :new, :create, :children, :grandchildren]

  def index
    @user = User.new
    @products = Product.all
    @image = Image.first

  end

  def new
    @product = Product.new
    10.times { @product.images.build }

    @parents = Category.where(ancestry: nil).order("id ASC")
  end

  def myproduct
    @product = Product.find(params[:id])
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

  # def search
  #   respond_to do |format|
  #     format.html
  #     format.json do
  #       @children = Category.find(params[:parent_id]).children
  #     end
  #   end
  # end

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
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private
  def product_params
    params.require(:product).permit(
      :name,
      :description,
      :region,
      :arrival_date,
      :price,
      images_attributes:[:id, :image]
      )
  end
end
