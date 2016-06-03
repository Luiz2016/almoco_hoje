class RestaurantsController < ApplicationController
  def index
    @restaurants_with_same_location = Restaurant.where(location: params[:location])
  end
end
