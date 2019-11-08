class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
  #validates :guest_rating, numericality: {:greater_than 0, :less_than 5}
end
