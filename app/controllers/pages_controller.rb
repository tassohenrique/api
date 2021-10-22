class PagesController < ApplicationController
  before_action :load_product

  def home
    @products = Product.all
  end

  def edit
    @products = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path(@product), notice: 'Product updated successfully'
    else
      render :edit
    end
  end

  def create

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to home_path
  end

  private

  def product_params
    params.require(:product).permit(:title, :product_type, :price, :rating)
  end

  def load_product
    @product = Product.find(params[:id])
  end

end
