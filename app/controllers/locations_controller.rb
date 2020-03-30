class LocationsController < ApplicationController
  def index
    locations = Location.search(params[:term])
    render json: locations
  end
end
