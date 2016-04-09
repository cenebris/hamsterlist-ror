require 'rails_helper'

RSpec.describe Task, type: :model do

  it 'can be built' do
    task = Fabricate(:task)
    expect(task).not_to be_nil
  end

end