class Api::V1::ProductsController < Api::V1::BaseController
  before_action :load_product, except: [:index, :new, :create, :banana]

  def index
    @products = Product.all
    render json: {
      products: @products
    }, status: :ok
  end

  def show
    render json: {
      products: @product
    }, status: :ok
  end

  def new
    @products = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: {
        product: @products
      }, status: :ok
    else
      render json:{
        message: "Product creation failed",
        errors: @product.errors.full_messages
       }, status: :unprocessable_entity
    end
  end

  def edit
    @products = Product.find(params[:id])
  end

  def update
    if @product.update(product_params)
      render json: {
        product: @product
       }, status: :ok
    else
      render json:{
        message: "Product could not be updated",
        errors: @product.erros.full_messages
       }, status: :unprocessable_entity
    end
  end

  def destroy
    if @product.destroy
      render json:{
      message: "Product deleted",
      }, status: :ok
    else
      render json: {
        message: "Product could be not be deleted"
       }, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :product_type, :price, :rating)
  end

  def load_product
    @product = Product.find(params[:id])
  end
end
