require 'rails_helper'

describe Todo, '#completed?' do
  it 'returns true if completed_at is set' do
    todo = Todo.new(completed_at: Time.now)

    expect(todo).to be_completed
  end

  it 'returns false if completed_at is nill' do
    todo = Todo.new(completed_at: nil)

    expect(todo).not_to be_completed
  end
end

describe Todo, '#complete!' do
  it 'updates completed_at' do
    todo = Todo.create!(completed_at: nil)
    todo.complete!
    todo.reload

    expect(todo).to be_completed
  end
end

describe Todo, '#incomplete!' do
  it 'sets completed_at to nil' do
    todo = Todo.create!(completed_at: Time.now)
    todo.incomplete!
    todo.reload

    expect(todo).not_to be_completed
  end
end
