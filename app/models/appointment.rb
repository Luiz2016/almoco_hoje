class Appointment < ActiveRecord::Base
  belongs_to :intention
  belongs_to :selected_intention
  belongs_to :selected_restaurant
end
