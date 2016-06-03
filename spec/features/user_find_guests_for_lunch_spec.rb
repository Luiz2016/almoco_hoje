require 'rails_helper'

feature 'user find guests for lunch spec' do
  scenario 'successfully' do
    user1 = create(:user, name: 'Renan', address: 'Paulista')
    user2 = create(:user, name: 'João', address: 'Paulista')

    visit find_guests_path(user1)

    within('#user') do
      expect(page).to have_content user1.name
    end

    within('#guests-list') do
      expect(page).to have_content user2.name
      expect(page).to have_content user2.email
      expect(page).to have_content user2.interest_1
      expect(page).to have_content user2.company
      expect(page).to have_content user2.address
    end
  end

  scenario 'user dont see his own name in the guests list' do
    user1 = create(:user, name: 'Renan', address: 'Paulista')
    user2 = create(:user, name: 'João', address: 'Paulista')

    visit find_guests_path(user1)

    within('#user') do
      expect(page).to have_content user1.name
    end

    within('#guests-list') do
      expect(page).not_to have_content user1.name

      expect(page).to have_content user2.name
      expect(page).to have_content user2.email
      expect(page).to have_content user2.interest_1
      expect(page).to have_content user2.company
      expect(page).to have_content user2.address
    end
  end

  scenario 'user see error message when dont exits guests list' do
    user1 = create(:user, name: 'Renan', address: 'Paulista')

    visit find_guests_path(user1)

    within('#user') do
      expect(page).to have_content user1.name
    end

    expect(page).to have_content 'não há usuários na sua região.'

  end
end
