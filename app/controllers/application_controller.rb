class ApplicationController < ActionController::Base

    protected

    def after_sign_in_path_for(resource) 
        return admin_path  if resource.is_admin
        return root_url
    end
end
