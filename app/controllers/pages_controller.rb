class PagesController < ApplicationController
  def my_events
    @events = Event.where(user_id: current_user.id)
    @rsvps = User.find(current_user.id).rsvps
    @favorites = User.find(current_user.id).favorites
  end
end
