class IntentionsController < ApplicationController
  def index
    @intentions_with_same_location = Intention.where(location: params[:location])
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

  private

  def intention_params
    params.require(:intention).permit(:name, :interests, :location, :date,
                                      :email, :company, :position)
  end
end
