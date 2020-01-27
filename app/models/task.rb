class Task < ApplicationRecord
  belongs_to :step
  acts_as_list scope: :step

  validates :title, presence: true
end
