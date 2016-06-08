require 'rails_helper'

feature 'user find guests for lunch spec' do
  scenario 'successfully' do
    intention1 = create(:intention, name: 'Renan', address: 'Paulista')
    intention2 = create(:intention, name: 'João', address: 'Paulista')

    visit find_guests_path(intention1)

    within('#intention') do
      expect(page).to have_content intention1.name
    end

    within('#guests-list') do
      expect(page).to have_content intention2.name
      expect(page).to have_content intention2.position
      expect(page).to have_content intention2.email
      expect(page).to have_content intention2.position
      expect(page).to have_content intention2.company
      expect(page).to have_content intention2.address
    end
  end

  scenario 'user dont see his own name in the guests list' do
    intention1 = create(:intention, name: 'Renan', address: 'Paulista')
    intention2 = create(:intention, name: 'João', address: 'Paulista')

    visit find_guests_path(intention1)

    within('#intention') do
      expect(page).to have_content intention1.name
    end

    within('#guests-list') do
      expect(page).not_to have_content intention1.name

      expect(page).to have_content intention2.name
      expect(page).to have_content intention2.position
      expect(page).to have_content intention2.email
      expect(page).to have_content intention2.position
      expect(page).to have_content intention2.company
      expect(page).to have_content intention2.address
    end
  end

  scenario 'user see error message when dont exits guests list' do
    intention1 = create(:intention, name: 'Renan', address: 'Paulista')

    visit find_guests_path(intention1)

    within('#intention') do
      expect(page).to have_content intention1.name
    end

    expect(page).to have_content 'não há usuários na sua região.'

  end
end
