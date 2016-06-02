FactoryGirl.define do
  factory :user do
    name       Faker::Name.name
    email      Faker::Internet.email
    interests  Faker::Lorem.word
    company    Faker::Lorem.word
    address    'Paulista'
    date       Faker::Number.between(0, 6)
    time       Faker::Number.between(0, 9)
  end
end
