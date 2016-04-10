require 'rails_helper'

RSpec.feature 'Creating Tasks' do
  scenario 'succeeds with valid input data' do
    visit root_path
    fill_in 'New Task', with: 'Capybara'
    click_button 'Create Task'
    expect(Task.last.name).to eq('Capybara')
  end

  scenario 'fails with invalid input data' do
    a = Task.count
    visit root_path
    fill_in 'New Task', with: ''
    click_button 'Create Task'
    expect(Task.count).to eq(a)
  end
end