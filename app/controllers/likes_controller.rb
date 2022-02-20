class LikesController < ApplicationController
  def create
    if params[:post_id]
    current_user.likes.create!(post_id: params[:post_id])
    @post = Post.find(params[:post_id])
    end
  end

  def destroy
    if params[:post_id]
    current_user.likes.find_by(post_id: params[:post_id]).destroy!
    @post = Post.find(params[:post_id])
    end
  end
end
