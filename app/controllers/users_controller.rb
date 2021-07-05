class UsersController < ApplicationController
    def new
        if session[:current_user_id]
            redirect_to "/", :notice => "Already Logged In!"
        end
    end

    def create 
        # @user = User.new(user_params)
        # if @user.save
        #     session[:user_id] = @user.id
        #     redirect_to @user
        # else
        #     render :new
        # end
        @user = User.new
        @user.email = params[:email]
        @user.save

        redirect_to "/login"
    end

    # def show
    # end

    # private

    # def user_params
    #     params.require(:user).permit(:username, :email, :password)
    # end

end
