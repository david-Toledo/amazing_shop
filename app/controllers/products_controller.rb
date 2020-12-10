class ProductsController < ApplicationController

#create
  def new
    @product = Product.new
  end

  def create
    product = Product.new product_params


    if params[:file].present?
      response = Cloudinary::Uploader.upload params[:file]
      p response
      product.image=response["public_id"]
      product.save
    end

    redirect_to products_path

  end


  def index
    @products = Product.all

  end

  def show
    @product = Product.find params[:id]

  end


  def edit
    @product = Product.find params[:id]

  end

  def update
    product = Product.find params[:id]

    if params[:file].present?
      response = Cloudinary::Uploader.upload params[:file]
      p response
      product.image=response["public_id"]
      product.save
    end

    product.update product_params
    redirect_to product_path(product.id)
  end


  def destroy
    Product.destroy params[:id]
    redirect_to products_path
  end

private

  def product_params
    params.require(:product).permit(:title, :price, :brand, :department, :description, :image )

  end


end
