class Intention < ActiveRecord::Base
  validates :name, :email, :interests, :company, :position, :address, :date,
            presence: true
end
