class User < ActiveRecord::Base
  validates :name, :email, :interests, :company, :address, :date,
            :time, presence: true
end
