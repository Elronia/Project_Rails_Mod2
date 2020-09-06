class PlacesController < ApplicationController
    
    def index
        @places = Place.all
    end
    
    def new
        @place = Place.new
    end
    
    def create
        @place = Place.create(place_params)
        redirect_to place_path(place)
    end

    def show
        @place = Place.find(params[:id])
    end

    private
    def place_params
        params.require(:place).permit(:name, :location, :hours_of_operation, :date)
    end

end
