require 'rails_helper'

feature 'user selects user to have lunch' do
  scenario 'successfully' do

    intention = create(:intention, name: 'Usuário 1')
    restaurant = create(:restaurant)

    visit intentions_path(location: intention.location)

    click_on 'Quero Almoçar'

    visit restaurants_path(location: restaurant.location)

    expect(page).to have_content restaurant.name
    expect(page).to have_content restaurant.email
    expect(page).to have_content restaurant.address

    click_on 'Nesse restaurante'

    visit #TODO intenção

    expect(page).to have_content "Obrigado, um e-mail foi enviado a #{intention.name} informando a sua intenção"
  end

end
