class Episode < ApplicationRecord
    belongs_to :guest
    validates :rating ,inclusion:{in:1..5}
end
