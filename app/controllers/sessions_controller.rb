class SessionsController < ApplicationController
  def index
  end

  def new
    render :login
  end

  def show
  end

  def create
  
    user = User.find_by(name: params[:name])
    user = user.try(:authenticate, params[:password])
      if user
      session[:user_id] = user.id
      @user = user
      redirect_to welcome_homepage_path
      else
      redirect_to sessions_login_path
      end
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
