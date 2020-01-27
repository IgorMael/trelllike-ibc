class Step < ApplicationRecord
  has_many :tasks, -> { order(position: :asc) }, dependent: :destroy
  belongs_to :board
  acts_as_list scope: :board

  validates :title, presence: true
end
