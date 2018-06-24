module API
  class DatespotsController < ApplicationController

    def index
      location_param = params[:location] && params[:location].size == 2 ? params[:location] : nil
      datespots = Datespot.search_datespots(params[:search] || location_param)
      render json: datespots, status: 200
    end
  end
end