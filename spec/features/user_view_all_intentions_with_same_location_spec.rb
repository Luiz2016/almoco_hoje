require 'rails_helper'

feature 'user view all intentions with same location' do
  scenario 'successfully' do
    intention1 = create(:intention, name: 'Usuário 1')
    intention2 = create(:intention, name: 'Usuário 2')
    intention3 = create(:intention, name: 'Usuário 3', location: 'Berrini')

    visit intentions_path(location: intention1.location)

    expect(page).to have_content intention1.name
    expect(page).to have_content intention1.email
    expect(page).to have_content intention1.interests
    expect(page).to have_content intention1.company
    expect(page).to have_content intention1.position
    expect(page).to have_content intention1.location

    expect(page).to have_content intention2.name
    expect(page).to have_content intention2.email
    expect(page).to have_content intention2.interests
    expect(page).to have_content intention2.company
    expect(page).to have_content intention1.position
    expect(page).to have_content intention2.location

    expect(page).not_to have_content intention3.name
  end
end