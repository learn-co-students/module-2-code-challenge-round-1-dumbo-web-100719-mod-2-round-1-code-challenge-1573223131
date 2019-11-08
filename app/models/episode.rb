class Episode < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances
end
