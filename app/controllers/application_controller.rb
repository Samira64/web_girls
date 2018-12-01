class ApplicationController < ActionController::Base

    protected

    def after_sign_in_path_for(resource)
        if resource.is_admin
          return admin_path
        else
          return user_series_index_path
        end
    end
end
