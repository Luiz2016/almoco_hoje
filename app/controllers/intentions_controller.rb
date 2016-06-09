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
    cookies[:selected_intention] = Intention.find(params[:selected_intention]).id
  end

  def appointment
    @intention = Intention.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant])
    @selected_intention = Intention.find(cookies[:selected_intention])
    @appointment = Appointment.create(intention: @intention, selected_intention: @selected_intention, restaurant: @restaurant)
    cookies.delete(:selected_intention)
    redirect_to @appointment

  end

  private

  def intention_params
    params.require(:intention).permit(:name, :interests, :location, :date,
                                      :email, :company, :position)
  end
end
