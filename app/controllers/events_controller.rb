class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      respond_to do |format|
        format.html {redirect_to events_path }
        format.json { render json: @event }
      end
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :all_day, :starts_at, :ends_at, :url, :color, :image)
  end

end
