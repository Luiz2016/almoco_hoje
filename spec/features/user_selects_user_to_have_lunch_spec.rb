require 'rails_helper'
feature 'user selects user to have lunch' do
  scenario 'successfully' do

    intention = create(:intention, name: 'Usuário 1')
    restaurant = create(:restaurant, location: intention.location)
    
    visit intention_path(intention)

    click_on 'Quero Almoçar'

    expect(current_path).to eq restaurants_intention_path(intention)

    expect(page).to have_content restaurant.name
    expect(page).to have_content restaurant.address

    click_on 'Nesse restaurante'

    expect(current_path).to eq finalize_intention_path(intention)

    expect(page).to have_content "Obrigado #{}, um e-mail foi enviado a \
#{} informando a sua intenção de almoçar em #{}"
  end
end
