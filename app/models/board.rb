class Board < ApplicationRecord
    has_many :steps, -> { order(position: :asc) }

    validates :title, presence: true

end
