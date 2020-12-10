class BasketsController < ApplicationController

  before_action :check_if_logged_in

  def user_basket
  end

  def add_item
    item = @current_user.basket.line_items.find_by product_id: params[:product_id]
    if item.present?
      #if there is a line_item already we will amend the quantity
      item.update quantity: (item.quantity + params[:quantity].to_i)

    else
      LineItem.create(
      product_id: params[:product_id],
      quantity: params[:quantity],
      basket_id: @current_user.basket.id

      )
    end #end of the else, ie:create line_item
    redirect_to basket_path
  end

  def index
    @baskets = Basket.all
  end

  def show
    @basket = Basket.find params[:id]
  end

  def check_out
    @basket = Basket.find params[:id]
  end 

  def edit
      @basket = Basket.find params[:id]
      redirect_to login_path unless @basket.user_id == @current_user.id
  end

  def update
  end

  def destroy
  end
end
