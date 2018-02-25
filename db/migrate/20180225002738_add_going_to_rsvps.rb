class AddGoingToRsvps < ActiveRecord::Migration[5.1]
  def change
    add_column :rsvps, :going, :boolean, default: false
  end
end
