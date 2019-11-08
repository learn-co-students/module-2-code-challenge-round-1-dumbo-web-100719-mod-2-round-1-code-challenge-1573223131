class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
  validates :number, :inclusion => 1..10


end
