class Appointment < ActiveRecord::Base
  belongs_to :intention
  belongs_to :selected_intention, class_name: "Intention"
  belongs_to :restaurant
end
