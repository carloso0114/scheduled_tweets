class ApplicationController < ActionController::Base
    before_action :set_current_user
    before_action :set_time

    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        end
    end

    def require_user_logged_in!
        redirect_to sign_in_path, alert:"You must be signed in to do that." if Current.user.nil?
    end

    before_action :set_time

    def set_time
        @time = Time.now
    end
end