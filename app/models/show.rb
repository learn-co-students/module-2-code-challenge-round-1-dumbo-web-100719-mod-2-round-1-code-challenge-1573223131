class Show < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    # validates :rating, numericality: { in: (1..5)}
    validates :rating, inclusion: { in: (1..5)}

end
