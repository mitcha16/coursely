class UsersController < ApplicationController
  def index
    @users = User.get_all_users
  end
end
