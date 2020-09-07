class FavoritesController < ApplicationController
    before_action :set_user, :set_places, only: [:new]

    def new
        @favorite = Favorite.new
    end

    def set_user
        @user = User.find(params[:user_id])
    end

    def create
        favorite = Favorite.create!(params[:favorite].permit!)

        redirect_to user_path(params[:favorite][:user_id])
    end

    def set_places
        @places = Place.all
    end
end
