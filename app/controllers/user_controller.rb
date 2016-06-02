class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
    unless
      flash[:error] = 'Preencher os Campos Obrigatórios'
      render 'new'
    end
  end
end



private

def user_params
  require(:user).permit(:name, :interests, :address, :time, :date, :email,
                      :company)
end
