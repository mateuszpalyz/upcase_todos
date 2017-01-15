require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in

    create_todo('Go to vet')

    expect(page).to have_todo_with_text('Go to vet')
  end
end
