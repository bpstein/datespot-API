module API
  class DatespotsController < ApplicationController
    def index
      datespots = Datespot.All
      render json: datespots, status: 200
    end
  end
end