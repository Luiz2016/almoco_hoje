require 'rails_helper'

feature 'user creates intention' do
  scenario 'successfully' do
    intention = build(:intention)

    visit root_path

    fill_in 'Nome',            with: intention.name
    fill_in 'E-mail',          with: intention.email
    fill_in 'Interesses',      with: intention.interests
    fill_in 'Empresa',         with: intention.company
    fill_in 'Cargo',           with: intention.position
    select intention.location, from: 'Região'
    select intention.date,     from: 'Dia da semana'

    click_on 'Quero receber convites!'

    expect(current_path).to eq intention_path(Intention.last)

    expect(page).to have_content intention.name
    expect(page).to have_content intention.location
  end

  scenario 'in blank' do
    visit root_path

    click_on 'Quero receber convites!'

    expect(page).to have_content 'Desculpe, precisamos saber o seu nome...'
    expect(page).to have_content 'Coloque seu e-mail para podermos nos falar!'
    expect(page).to have_content 'Coloque seus interesses, para nos ajuda a encontrar um bom almoco para você!'
    expect(page).to have_content 'Por favor nos diga a sua empresa, se você trabalha por conta, coloque o seu nome'
    expect(page).to have_content 'Desculpe, esse campo é obrigatório.'
    expect(page).to have_content 'Selecione uma das regiões de almoço!'
    expect(page).to have_content 'Selecione o dia da semana que você está mais disponível!'
  end
end
