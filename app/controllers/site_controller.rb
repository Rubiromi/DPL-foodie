class SiteController < ApplicationController
  def index
    @event = Event.new
  end

  def places
    respond_to do |format|
      format.html do
        render :index
      end
      format.json do
        render json: {name: 'Jeremy'}
      end
    end
  end
end
