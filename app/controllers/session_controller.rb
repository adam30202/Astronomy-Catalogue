class SessionController < ApplicationController


    def new
    end

    def create
        user = User.find_by :email => params[:email]
        if user.present? & user.authentication(params[:password])
            session[:user_id] = user.id
            redirect_to astronomical_items_path
        end
    end

    def destroy

    end



end
