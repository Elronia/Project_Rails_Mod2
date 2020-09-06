class UsersController < ApplicationController
    
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            redirect_to @user
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def show
        @user = User.find(params[:id])
        #we can set up another helper method so we know @user
        #we can implicitely return
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email_address)
    end

end
