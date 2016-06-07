class IntentionsController < ApplicationController

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
    @intentions_with_same_location = Intention.where(location: @intention.location)
  end

  def restaurants
    @intention = Intention.find(params[:id])
    #@intention_selected = Intention.find(params[:intention_selected])
    @restaurants_with_same_location = Restaurant.where(location: @intention.location)
  end

  def finalize
    @intention = Intention.find(params[:id])
    restaurant = Restaurant.find(params[:restaurant_selected])
  end

  private

  def intention_params
    params.require(:intention).permit(:name, :interests, :location, :date,
                                      :email, :company, :position)
  end
end
