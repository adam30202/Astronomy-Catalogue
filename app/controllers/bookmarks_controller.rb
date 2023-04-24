class BookmarksController < ApplicationController

    def show
        # refactor this/HTML
        @bookmarked_astronomical_items = []
        @current_user.bookmarks.each do |bookmark|
            @bookmarked_astronomical_items.push(AstronomicalItem.find bookmark.astronomical_item_id)
        end
    end
        
    def new
        bookmark_check = Bookmark.find_by user_id: @current_user.id, astronomical_item_id: params[:astronomical_item_id]
        bookmark = Bookmark.new(:user_id => @current_user.id, :astronomical_item_id => params[:astronomical_item_id])

        if bookmark_check.nil?
            bookmark.save
            redirect_to astronomical_item_path(params[:astronomical_item_id])
        else
            bookmark_check.delete
            bookmark.delete
            redirect_to astronomical_item_path(params[:astronomical_item_id])
        end

    end

end
