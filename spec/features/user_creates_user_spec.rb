require 'rails_helper'

feature 'user creates user' do
  scenario 'successfully' do

    user = User.create(name:       Faker::Name.name_with_middle
                       email:      Faker::Internet.email
                       interest_1: Faker::Lorem.word
                       interest_2: Faker::Lorem.word
                       interest_3: Faker::Lorem.word
                       interest_4: Faker::Lorem.word
                       company:    Faker::Lorem.word
                       adress:     # lista de cidades
                       date:       Faker::Date.backward(7)
                       time:       Faker::Time.backward(7, :evening)
                       )

    visit root_path

    fill_in 'Nome',                         with: use.name
    fill_in 'E-mail',                       with: use.email
    fill_in 'Interesses',                   with: use.interest_1
    fill_in '',                             with: use.interest_2
    fill_in '',                             with: use.interest_3
    fill_in '',                             with: use.interest_4
    fill_in 'Empresa',                      with: use.company
                  #select para lista de cidades
    fill_in 'Data',                         with: use.date
    fill_in 'Horário',                      with: use.time

    click_on 'Enviar'
    
  end
end
