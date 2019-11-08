class Appearance < ApplicationRecord

    belongs_to :guests
    belongs_to :episodes

    # possibly wrong?
    validates :rating, :inclusion => { :in => 1..5 }

end
