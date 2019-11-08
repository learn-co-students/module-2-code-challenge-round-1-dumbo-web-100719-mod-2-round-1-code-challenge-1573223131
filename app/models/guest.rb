class Guest < ApplicationRecord
    belongs_to :episode

    validates :rating, :inclusion => 1..5
end
