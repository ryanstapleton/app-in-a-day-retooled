class RemoveColumnFromRsvps < ActiveRecord::Migration[5.1]
  def change
    remove_column :rsvps, :going, :boolean
  end
end
