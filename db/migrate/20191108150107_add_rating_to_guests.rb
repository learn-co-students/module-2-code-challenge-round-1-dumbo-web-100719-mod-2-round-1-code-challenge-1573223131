class AddRatingToGuests < ActiveRecord::Migration[5.1]
  def change
    add_column :guests, :rating, :integer
  end
end
