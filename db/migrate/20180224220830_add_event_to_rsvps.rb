class AddEventToRsvps < ActiveRecord::Migration[5.1]
  def change
    add_reference :rsvps, :event, foreign_key: true
  end
end
