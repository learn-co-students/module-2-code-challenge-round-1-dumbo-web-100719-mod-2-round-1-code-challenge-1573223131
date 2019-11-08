class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :rating, numericality: {
        greater_than: 0,
        less_than: 5
    }
    # validates :rating, inclusion: {in: 1..5}
end
