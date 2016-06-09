require 'rails_helper'

feature 'user views appointment' do
  scenario 'successfully' do

    intention1 = create(:intention)
    intention2 = create(:intention)
    restaurant = create(:restaurant)

    appointment = create(:appointment, intention: intention1, selected_intention: intention2, restaurant: restaurant)

    visit appointment_path(appointment)

    expect(page).to have_content appointment.intention.name
    expect(page).to have_content appointment.selected_intention.name
    expect(page).to have_content appointment.restaurant.name

  end
end
