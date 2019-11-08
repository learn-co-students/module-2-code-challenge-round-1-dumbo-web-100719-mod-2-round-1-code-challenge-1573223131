class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.string :guest_rating
      t.references :guest, foreign_key: true
      t.references :episode, foreign_key: true

      t.timestamps
    end
  end
end
