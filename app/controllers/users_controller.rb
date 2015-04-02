class UsersController < ApplicationController
  def index

  end

  def register
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.admin = 0
    @user.solved = 0
    @user.submitted = 0
    if @user.save
      redirect_to login_path
    else
      render :register
    end
  end

  protected
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
