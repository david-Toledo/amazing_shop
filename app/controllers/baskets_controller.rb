class BasketsController < ApplicationController

  before_action :check_if_logged_in

  def user_basket

  end

  def add_item
    LineItem.create(
      product_id:params[:product_id],
      quantity:params[:quantity],
      basket_id:@current_user.basket.id
    )
    redirect_to basket_path
  end

  def index
    @baskets = Basket.all
  end

  def show
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
