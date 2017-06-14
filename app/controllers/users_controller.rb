class UsersController < ApplicationController

  def index
  end

  def show
  end

  def new
    @user = User.new
    render :signup
  end

  def create
  @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to welcome_homepage_path
    else
      redirect_to users_signup_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end



private

def user_params
  params.require(:user).permit(:name, :password, :password_confirmation)
end



end
