class AddFavoritedToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_column :favorites, :favorited, :boolean, default: false
  end
end
