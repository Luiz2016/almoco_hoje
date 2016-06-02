require 'rails_helper'

feature 'user creates user' do
  scenario 'successfully' do
    user = FactoryGirl.create(:user)

    visit root_path

    fill_in 'Nome',       with: user.name
    fill_in 'E-mail',     with: user.email
    fill_in 'Interesses', with: user.interests
    fill_in 'Empresa',    with: user.company
    select user.address,  from: 'Região'
    select user.date,     from: 'Dia da semana'
    select user.time,     from: 'Horário'

    click_on 'Quero receber convites!'

    expect(page).to have_content user.name
    expect(page).to have_content user.email
    expect(page).to have_content user.interests
    expect(page).to have_content user.company
    expect(page).to have_content user.address
    expect(page).to have_content user.date
    expect(page).to have_content user.time
  end

  scenario 'in blank' do
    visit root_path

    click_on 'Quero receber convites!'

    expect(page).to have_content 'Desculpe, precisamos saber o seu nome...'
    expect(page).to have_content 'Coloque seu e-mail para podermos nos falar!'
    expect(page).to have_content 'Coloque seus interesses, para nos ajuda a encontrar um bom almoco para você!'
    expect(page).to have_content 'Desculpe, esse campo é obrigatório.'
    expect(page).to have_content 'Selecione uma das regiões de almoço!'
    expect(page).to have_content 'Selecione o dia da semana que você está mais disponível!'
    expect(page).to have_content 'Selecione o horário que você está mais disponível!'
  end
end
