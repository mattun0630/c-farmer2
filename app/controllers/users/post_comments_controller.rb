class Users::PostCommentsController < ApplicationController
		def create
	    post = Post.find(params[:post_id])
	    comment = current_user.post_comments.new(post_comment_params)
	    comment.post_id = post.id
	    comment.save
	    redirect_to posts_path
	end
	def destroy
	    @post = Post.find(params[:id])
	    @post.destroy
	    redirect_to posts_path
	end
	def show
    	@post = Post.find(params[:post_id])
	end

	private
	def post_comment_params
	  params.require(:post_comment).permit(:user_id,
	                                       :post_image_id,
	                                       :comment)
	end
end
