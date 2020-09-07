class SessionsController < ApplicationController

    skip_before_action :auhorized_to_see_page, only: [:new,:create]
    
    def new
        # don't need anything in here, cause we're not setting up a
        # blank model to couple with the form
    end

    # def login
    #     @error = flash[:error]
    # end
      
    def create
        # byebug
        # no strong params cause there is no mass assignment
        # @user = User.find_by(first_name: params[:first_name])
        @user = User.find_by(email_address: params[:session][:email_address])
        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            redirect_to @user #user_path(user)
        else
            flash[:error] = "Incorrect username or password"
            redirect_to login_path
        end
    end

    def destroy
        session.delete(:user_id) # or session[:user_id] = nil
        @current_user = nil
    end

end
