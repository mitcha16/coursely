class UsersController < ApplicationController
  def index
    @users = User.get_all_users
  end

  def show
    @user = User.get_user(params[:id])
  end
end
