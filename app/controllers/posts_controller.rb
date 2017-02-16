class PostsController < ApplicationController
	before_filter :authenticate_user!


	def index
		@posts = Post.order(created_at: :desc).all
		@post = Post.new
	end

	def show 
		@post = Post.find(params[:id])
		@comments = Comment.where(post_id: params[:id])    
		@comment = Comment.new    
	end

	def create
		
		@post = Post.new(post_params)

		if @post.save
			flash[:success] = "post was successful"
	  	else
	  		flash[:danger] = "post failed"
	  	end

	  	redirect_to :back

	end


	private def post_params
		params.require(:post).permit(:user_id, :title, :body)
	end

end
