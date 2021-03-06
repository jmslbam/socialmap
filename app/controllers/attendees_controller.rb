class AttendeesController < ApplicationController
  before_action :authenticate_user!

  def create
    event = Event.find_by(passphrase: params[:passphrase])

    if event.nil?
      flash[:notice] = "Event does not exist"
      redirect_to root_path
    else
      attendee = Attendee.new(user: current_user, event: event)

      if attendee.save
        flash[:notice] = "Successfully registered."
        redirect_to event_path(event)
      else
        flash[:alert] = "Could not register."
        redirect_to root_path
      end
    end
  end
end
