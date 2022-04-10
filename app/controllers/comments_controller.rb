class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to @post, notice: "コメントを書き込みました。"
    else
      redirect_to post_path(@post), notice: "コメントを入力して下さい"
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @post, notice: "コメントを削除しました。"
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id, :user_id)
  end
end
