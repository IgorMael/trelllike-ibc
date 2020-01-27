class Step < ApplicationRecord
  has_many :tasks, -> { order(position: :asc) }
  belongs_to :board
  acts_as_list scope: :board
end
