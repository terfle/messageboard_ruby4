class CommentsController < ApplicationController
before_filter :authenticate_user!
	def create
		@comment = Comment.new(comment_params)

		if @comment.save
			flash[:success] = "comment was successful"
		else
			flash[:danger] = "comment failed"
		end

		redirect_to :back
	end

	private def comment_params
		params.require(:comment).permit(:post_id, :user_id, :body)
	end
end
