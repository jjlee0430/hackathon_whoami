class CommentsController < ApplicationController

  def create
      @comment = Comment.new
      @comment.content = params[:input_content]
      @comment.user = params[:input_user]
      @comment.post_id = params[:post_id]
      @comment.participant = params[:comment_user]
      @comment.save

      redirect_to "/posts/finish/#{params[:post_id]}"
    end
    
end
