class UsersController < ApplicationController

  def index
    @users_with_same_address = User.where(address: params[:address])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.persisted?
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :interests, :address, :time, :date,
                                 :email, :company)
  end
end
