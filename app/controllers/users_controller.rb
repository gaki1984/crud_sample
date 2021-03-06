class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # Strong Parameter の記述
    User.create(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:name, :age)
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
