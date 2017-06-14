class WelcomeController < ApplicationController
  before_action :require_login

  def homepage
    byebug
    @user = User.find(session[:user_id])
    render :homepage
  end


  private
  def require_login
    redirect_to sessions_login_path unless logged_in?
  end
end
