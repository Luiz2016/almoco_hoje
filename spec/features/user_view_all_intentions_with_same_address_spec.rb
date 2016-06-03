require 'rails_helper'

feature 'user view all intentions with same address' do
  scenario 'successfully' do
    intention1 = create(:intention, name: 'Usuário 1')
    intention2 = create(:intention, name: 'Usuário 2')
    intention3 = create(:intention, name: 'Usuário 3', address: 'Berrini')

    visit intentions_path(address: intention1.address)

    expect(page).to have_content intention1.name
    expect(page).to have_content intention1.email
    expect(page).to have_content intention1.interests
    expect(page).to have_content intention1.company
    expect(page).to have_content intention1.address

    expect(page).to have_content intention2.name
    expect(page).to have_content intention2.email
    expect(page).to have_content intention2.interests
    expect(page).to have_content intention2.company
    expect(page).to have_content intention2.address

    expect(page).not_to have_content intention3.name
  end
end
