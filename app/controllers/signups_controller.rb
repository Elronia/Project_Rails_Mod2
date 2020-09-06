class SignupsController < ApplicationController

    def new
        @signup = Signup.new
        @user = User.all
        @place = Place.all
    end
    
    def create
        # byebug
        signup_params = params.require(:signup).permit(:priority_level, :user_id, :place_id, :date)
        @signup = Signup.create(favorite_params)

        user = User.find(params[:signup][:user_id])

        redirect_to user_path(user)
    end

end
