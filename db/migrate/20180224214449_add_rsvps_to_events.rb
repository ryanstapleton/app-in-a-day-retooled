class AddRsvpsToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :rsvp, foreign_key: true
  end
end
