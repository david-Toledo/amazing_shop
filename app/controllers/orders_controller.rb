class OrdersController < ApplicationController

  before_action :check_if_logged_in
  def index
    @orders = Order.where user_id:@current_user.id
  end

  def show

    @order = params[:id]
    @order_items = OrderItem.where order_id:params[:id]
  end

end
