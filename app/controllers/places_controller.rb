class PlacesController < ApplicationController
    
    def index
        if logged_in?
            @places = @current_user.places
        else
            @places = Place.all # or force a login
        end
    end
    # def index
    #     if session[:user_id]
    #         @user = User.find(session[:user_id])
    #         @places = @user.places
    #       else
    #         @places = Place.all # or force a login
    #       end
    # end
    
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
