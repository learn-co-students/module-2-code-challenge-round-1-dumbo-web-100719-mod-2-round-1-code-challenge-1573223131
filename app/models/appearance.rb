class Appearance < ApplicationRecord
    validates :rating, :inclusion => 1..5
    belongs_to :episode
    belongs_to :guest
end
