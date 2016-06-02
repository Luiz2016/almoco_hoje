FactoryGirl.define do
  factory :intention do
    name       Faker::Name.name
    email      Faker::Internet.email
    interests  Faker::Lorem.word
    company    Faker::Lorem.word
    position   Faker::Lorem.word
    address    'Paulista'
    date       'Segunda-feira'
  end
end
