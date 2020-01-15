class FollowsController < ApplicationController
 def create
    follow = current_user.follows.build(producer_id: params[:producer_id])
    follow.save
    redirect_to producers_path
  end

  def destroy
    follow = Follow.find_by(producer_id: params[:producer_id], user_id: current_user.id)
    follow.destroy
    redirect_to producers_path
  end
end
