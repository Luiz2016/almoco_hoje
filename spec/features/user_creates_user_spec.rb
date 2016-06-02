require 'rails_helper'

feature 'user creates user' do
  scenario 'successfully' do

  user = FactoryGirl.create(:user)

  visit root_path

  fill_in 'Nome',      with: user.name
  fill_in 'E-mail',    with: user.email
  fill_in 'Interesses', with: user.interests
  fill_in 'Empresa',   with: user.company
  select user.address, from: 'Região'
  fill_in 'Data',      with: user.date
  fill_in 'Horário',   with: user.time

  click_on 'Quero receber convites!'

  expect(page).to have_content user.name
  expect(page).to have_content user.email
  expect(page).to have_content user.interests
  expect(page).to have_content user.company
  expect(page).to have_content user.address
  expect(page).to have_content user.date
  expect(page).to have_content user.time
  end
end
