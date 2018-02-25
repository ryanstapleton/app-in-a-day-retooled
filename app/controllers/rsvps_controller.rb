class RsvpsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:destroy]
  
  def new
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.create!(event_id: params[:event_id], user_id: current_user.id)
    respond_to do |format|
      if @rsvp.save
        format.html { redirect_to root_url }
      end
    end
  end

  def destroy
    @rsvp.destroy
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  private

    def set_event
      @rsvp = Rsvp.find(params[:id])
    end
end
