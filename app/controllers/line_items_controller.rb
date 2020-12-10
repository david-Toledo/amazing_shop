class LineItemsController < ApplicationController
  def new
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
    item = @current_user.basket.line_items.find_by product_id: params[:line_item][:product_id]
    item.update quantity: params[:line_item][:quantity]

    redirect_to basket_path
  end

  def destroy
  end
end
