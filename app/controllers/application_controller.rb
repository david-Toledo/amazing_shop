class ApplicationController < ActionController::Base

before_action :fetch_user



  def fetch_user
    if session[:user_id].present?
      @current_user = User.find_by id:session[:user_id]
    end

    session[:user_id] = nil unless @current_user.present?
  end


  def check_if_logged_in
    #if the current request is coming from an user that is not logged in, redirect them to the log in page. Any controller actions that should be available only to logged in users can then run this method before they do their work, ie. we can lock down those routes
    unless @current_user.present?
      flash[:error] = 'You must be logged in to perform that action'
      redirect_to login_path
    end
  end #check if check_if_logged_in

end
