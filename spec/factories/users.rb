FactoryGirl.define do
  factory :user do
    name        Faker::Name.name
    email       Faker::Internet.email
    interests   Faker::Lorem.word
    company     Faker::Lorem.word
    address     'Paulista'
    date        Faker::Date.backward(7)
    time        Faker::Time.backward(7, :evening)
  end
end
