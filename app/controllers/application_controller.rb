class ApplicationController < ActionController::Base

    before_action :fetch_user
    before_action :set_query

    def set_query
        @query = AstronomicalItem.ransack(params[:q])
    end


    private
    def fetch_user
        @current_user = User.find_by :id => session[:user_id]
        session[:user_id] = nil unless @current_user.present?
    end

    def check_for_login
        redirect_to login_path unless @current_user.present?
    end

    def bookmark_text
        if @bookmark_exists
            return "Remove Bookmark"
        else
            return "Bookmark"
        end
    end

    helper_method :bookmark_text

end
