class PostsController < ApplicationController

	def index
		@posts =Post.all
	end
	def new
	    @post = Post.new
	    @products = @producer.products.all
  	end
  	def show
    	@post = Post.find(params[:id])
    	@user = @post.user
    	@reply = current_producer.replys.build
    	@replys = @post.replys
    	# @replys = @producer.replys
  	    # @reply_posts= @producer.reply_posts
	end

  	def create
	    @post = Post.new(post_params)
	    @post.user_id = current_user.id
	    @post.save
	    redirect_to posts_path
	end
	private
	  	def post_params
	    	params.require(:post).permit(:item, :title, :description, :follow_producer, :follow_item)
	  	end
end
