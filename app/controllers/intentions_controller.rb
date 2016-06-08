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
    @restaurants_with_same_location = Restaurant.where(location: @intention.location)
  end

  def create_appointment
    @intention = Intention.find(params[:id])
    @selected_intention = Intention.find(params[:selected_intention])
    @selected_restaurant = Restaurant.find(params[:selected_restaurant])
    Appointment.create(intention: @intention, selected_intention: @selected_intention, selected_restaurant: @selected_restaurant)
  end

  private

  def intention_params
    params.require(:intention).permit(:name, :interests, :location, :date,
                                      :email, :company, :position)
  end
end
