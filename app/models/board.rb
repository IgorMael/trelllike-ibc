class Board < ApplicationRecord
    has_many :steps, -> { order(position: :asc) }, dependent: :destroy

    validates :title, presence: true

end
