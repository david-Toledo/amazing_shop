class ProductsController < ApplicationController

#create
  def new
  end

  def create
  end

#read

  def index
    @products=Product.all
  end

  def show
    @product=Product.find params[:id]
  end

#update

  def edit
  end

  def update
  end


#destroy

  def destroy
  end
end
