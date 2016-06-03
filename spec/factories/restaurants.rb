FactoryGirl.define do
  factory :restaurant do
    name     Faker::Name.name
    email    Faker::Internet.email
    location 'Paulista'
    address  Faker::Address.street_name
  end
end
