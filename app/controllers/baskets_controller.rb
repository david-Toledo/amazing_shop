class BasketsController < ApplicationController
  def new
  end

  def create
  end

  def index
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
