require 'rails_helper'

feature 'user view all users with same address' do
  scenario 'successfully' do
    user1 = create(:user, name: 'Usuário 1')
    user2 = create(:user, name: 'Usuário 2')
    user3 = create(:user, name: 'Usuário 3', address: 'Berrini')

    visit users_path(address: user1.address)

    expect(page).to have_content user1.name
    expect(page).to have_content user1.email
    expect(page).to have_content user1.interest_1
    expect(page).to have_content user1.company
    expect(page).to have_content user1.address

    expect(page).to have_content user2.name
    expect(page).to have_content user2.email
    expect(page).to have_content user2.interest_1
    expect(page).to have_content user2.company
    expect(page).to have_content user2.address
    
    expect(page).not_to have_content user3.name
  end
end
