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
    # def create
    #     # byebug
    #     # no strong params cause there is no mass assignment
    #     # @user = User.find_by(first_name: params[:first_name])
    #     @user = User.find_by(email_address: params[:session][:email_address])
    #     if @user && @user.authenticate(params[:session][:password])
    #         session[:user_id] = @user.id
    #         redirect_to @user #user_path(user)
    #     else
    #         flash[:error] = "Incorrect username or password"
    #         redirect_to login_path
    #     end
    # end

    def set_places
        @places = Place.all
    end

    # def update
    #     @favorite = Favorite.find(params[:id])
    #     @favorite.update(favorite_params)
    #     redirect_to favorite_path(@favorite)
    # end

    # def destroy
    #     @favorite = Favorite.find(params[:id])
    #     # Favorite.find(params[:id])
    #     @favorite.destroy
    #     redirect_to favorites_path
    # end

    # def fav_params
    #     params.require(:favorite).permit(:user_id, :place_id)
    # end

end
