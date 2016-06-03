class Intention < ActiveRecord::Base
  validates :name, :email, :interests, :company, :position, :location, :date,
            presence: true
end
