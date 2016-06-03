class IntentionsController < ApplicationController
  def index
    @intentions_with_same_address = Intention.where(address: params[:address])
  end

  def new
    @intention = Intention.new
  end

  def create
    @intention = Intention.create(intention_params)
    if @intention.persisted?
      redirect_to @intention
    else
      render :new
    end
  end

  def show
    @intention = Intention.find(params[:id])
  end

  def find_guests
    @intention = Intention.find(params[:id])
    @intentions_with_same_address = Intention.where(address: @intention.address).where.not(id: @intention)
  end

  private

  def intention_params
    params.require(:intention).permit(:name, :interests, :address, :date,
                                      :email, :company, :position)
  end
end
