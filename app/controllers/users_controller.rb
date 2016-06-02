class UsersController < ApplicationController

  def index
    @users_with_same_address = User.where(address: params[:address])
  end
end
