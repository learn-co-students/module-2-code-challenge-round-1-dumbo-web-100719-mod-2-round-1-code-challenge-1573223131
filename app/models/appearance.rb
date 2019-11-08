class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  validates :rating, presence: true, length: {minimum:1,maximum:5}
end
