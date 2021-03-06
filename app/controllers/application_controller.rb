class ApplicationController < ActionController::Base

    helper_method :require_user, :user_has_no_profile, :user_has_profile, :todays_date

    
    def require_user
        if !current_user
            redirect_to new_user_session_path, alert: "You must logged in first."
        end
      end
  
    def user_has_no_profile
      if !current_user.profile.present?
        redirect_to new_profile_path, notice: "Now, introduce your information."
      end
    end

    def user_has_profile
        if current_user.profile.present?
            redirect_to root_path
        end
    end
end
