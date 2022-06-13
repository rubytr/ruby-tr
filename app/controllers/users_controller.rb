class UsersController < ApplicationController
  def index
    @users = User.page(params[:page])
    @all_users = User.count
  end
end
