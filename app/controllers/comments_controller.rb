class CommentsController < ApplicationController

    def create
        comment = Comment.new comment_params
        if !comment.save
            flash[:notice] = comment.errors.full_messages.to_sentence   
        end
        redirect_to astronomical_item_path(params[:astronomical_item_id])
    end


    private
    def comment_params
        params.require(:comment).permit(:content, :user_id, :astronomical_item_id)
    end

end
