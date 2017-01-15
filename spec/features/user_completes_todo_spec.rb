require 'rails_helper'

feature 'User completes todo' do
  scenario 'successfully' do
    sign_in

    create_todo('Go to vet')

    click_on 'Mark complete'

    expect(page).to have_completed_todo_with_text('Go to vet')
  end
end
