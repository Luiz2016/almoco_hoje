class UsersController < ApplicationController

  def index
    @user = User.find(params[:id])
    @users_with_same_address = User.where(address: @user.address).where.not(id: @user)
  end
end
