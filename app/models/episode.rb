class Episode < ApplicationRecord

    has_many :ppearances
    has_many :guests, through: :appearances
    
end
