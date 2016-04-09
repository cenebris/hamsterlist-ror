require 'rails_helper'

RSpec.describe Task, type: :model do

  it 'can be built' do
    task = Fabricate.build(:task)
    expect(task).not_to be_nil
  end

  it 'must have name' do
    task = Fabricate.build(:task, name: nil)
    expect(task).not_to be_valid
    expect(task.errors[:name].any?).to be_truthy
  end

end