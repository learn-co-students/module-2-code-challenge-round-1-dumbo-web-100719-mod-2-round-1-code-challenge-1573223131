class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :name
      t.integer :episode_id
      t.integer :guest_id
      t.integer :rating
      t.integer :show_id
     t.timestamps
    end
  end
end
