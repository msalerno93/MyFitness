class ApplicationController < ActionController::Base
    before_action :current_user

    def home
        @magic = "Hello Home Page"
    end

    private
        def current_user
            if session[:current_user_id]
                @current_user = User.find(session[:current_user_id])
            end
        end

        def login(user)
            session[:current_user_id] = @user.id
        end

end
