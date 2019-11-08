class AddForeignKeyToEpisodes < ActiveRecord::Migration[5.1]
  def change
    add_column :episodes, :guest_id, :integer
    add_column :episodes, :rating, :integer
  end
end
