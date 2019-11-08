class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, presence: true, inclusion: {in: 1..5}
end
