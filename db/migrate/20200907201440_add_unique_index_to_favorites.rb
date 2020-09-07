class AddUniqueIndexToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_index :favorites, [:user_id, :place_id], unique: true
  end
end
