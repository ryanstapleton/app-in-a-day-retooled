class RemoveColumnFromFavorites < ActiveRecord::Migration[5.1]
  def change
    remove_column :favorites, :favorited, :boolean
  end
end
