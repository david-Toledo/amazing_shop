class UsersController < ApplicationController
  def new
    @user = User.new

  end

  def create
    @user = User.create user_params
    if @user.persisted?
      session[:user_id] = @user.id
      @basket = Basket.create user_id:@user.id
      redirect_to root_path
    else
      render :new
    end


  end

  def index
  end

  def show
  end

  def edit
  end

  def update
    user = User.find params[:id]

    if params[:file].present?
      response = Cloudinary::Uploader.upload params[:file]
      p response
      user.image=response["public_id"]
      user.save
    end

    user.update user_params
    redirect_to root_path
  end


  def destroy
  end
end

private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end
