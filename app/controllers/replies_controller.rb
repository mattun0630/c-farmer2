class RepliesController < ApplicationController
	def create
        post = Post.find(params[:post_id])
        reply = current_producer.replys.build(reply_params)
        reply.post_id = post.id
        reply.save
        redirect_to posts_path
    end
    private
    def reply_params
      params.require(:reply).permit(:comment)
    end
end
