class ApplicationController < ActionController::Base

    before_action :require_login, except: [:new]

    protected

    def require_login
        unless current_user
            flash[:error] = "You must log in to access this page."
            redirect_to root_url
        end
    end

    def after_sign_in_path_for(resource)
        if resource.admin?
          return admin_path
        else
          return user_series_index_path
        end
    end
end
