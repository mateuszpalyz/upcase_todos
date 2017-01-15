require 'rails_helper'

feature 'User marks todo incomplete' do
  scenario 'successfully' do
    sign_in

    create_todo('Go to vet')

    click_on 'Mark complete'
    click_on 'Mark incomplete'

    expect(page).not_to have_completed_todo_with_text('Go to vet')
    expect(page).to have_todo_with_text('Go to vet')
  end
end
