class AddFavoritesRefToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :favorite, foreign_key: true
  end
end
