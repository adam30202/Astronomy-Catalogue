class BookmarksController < ApplicationController

    before_action :check_for_login

    def show
        # refactor this/HTML
        @bookmarked_astronomical_items = []
        @current_user.bookmarks.each do |bookmark|
            @bookmarked_astronomical_items.push(AstronomicalItem.find bookmark.astronomical_item_id)
        end
    end
        
    def new
        bookmark_check = Bookmark.find_by user_id: @current_user.id, astronomical_item_id: params[:astronomical_item_id]
        
        if bookmark_check.nil?
            bookmark = Bookmark.create(:user_id => @current_user.id, :astronomical_item_id => params[:astronomical_item_id])
            @bookmark_exists = true
        else
            bookmark_check.delete
            @bookmark_exists = false
        end
    end

end
