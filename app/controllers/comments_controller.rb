class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    params[:post_id] = nil
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to @post, notice: "コメントを書き込みました。"
    else
      @post = Post.find(params[:post_id])
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    params[:post_id] = nil
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @post, notice: "コメントを削除しました。"
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :post_id, :user_id)
  end

end
