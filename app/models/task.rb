class Task < ApplicationRecord
  belongs_to :step
  act_as_list scope: :task

  validates :title, presence: true
end
