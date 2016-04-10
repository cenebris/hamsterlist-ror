class Task < ActiveRecord::Base

  validates :name, presence: true
  validates :finished, inclusion: [true, false]

end
