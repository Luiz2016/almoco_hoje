require 'rails_helper'

feature 'user creates user' do
  scenario 'successfully' do



    user = User.create(name:       Faker::Name.name_with_middle,
                       email:      Faker::Internet.email,
                       interest_1: Faker::Lorem.word,
                       interest_2: Faker::Lorem.word,
                       interest_3: Faker::Lorem.word,
                       interest_4: Faker::Lorem.word,
                       company:    Faker::Lorem.word,
                       address:    'Paulista',
                       date:       Faker::Date.backward(7),
                       time:       Faker::Time.backward(7, :evening)
                      )

    visit root_path

    fill_in 'Nome',                         with: user.name
    fill_in 'E-mail',                       with: user.email
    fill_in 'Interesses',                   with: user.interest_1
    fill_in '',                             with: user.interest_2
    fill_in '',                             with: user.interest_3
    fill_in '',                             with: user.interest_4
    fill_in 'Empresa',                      with: user.company
    select user.address,                    from: 'Região'
    fill_in 'Data',                         with: user.date
    fill_in 'Horário',                      with: user.time

    click_on 'Enviar'

    expect(page).to have_content user.name
    expect(page).to have_content user.email
    expect(page).to have_content user.interest_1
    expect(page).to have_content user.interest_2
    expect(page).to have_content user.interest_3
    expect(page).to have_content user.interest_4
    expect(page).to have_content user.company
    expect(page).to have_content user.address
    expect(page).to have_content user.date
    expect(page).to have_content user.time
  end
end
