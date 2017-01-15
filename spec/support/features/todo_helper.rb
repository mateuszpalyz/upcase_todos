module Features
  def create_todo(title)
    click_on 'Add a new todo'
    fill_in 'Title', with: title
    click_on 'Submit'
  end

  def have_todo_with_text(text)
    have_css '.todos li', text: text
  end

  def have_completed_todo_with_text(text)
    have_css '.todos li.completed', text: text
  end
end
