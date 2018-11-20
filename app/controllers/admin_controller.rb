class AdminController < ApplicationController

    def index
        unless current_user && current_user.admin?
            redirect_to root_url
        end
    end

end