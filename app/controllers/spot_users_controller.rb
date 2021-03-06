class SpotUsersController < ApplicationController
  before_action :authenticate_user!
  def create
    @spot = Spot.find(params[:spot_id])
    @spot_user = @spot.spot_users.build(spot_user_params)
    @spot_user.user_id = current_user.id
    if @spot_user.save
      redirect_to @spot, notice: "コメントを書き込みました。"
    else
      redirect_to spot_path(@spot), notice: "コメントを入力して下さい"
    end
  end

  def destroy
    spot = Spot.find(params[:spot_id])
    @spot_user = spot.spot_users.find(params[:id])
    @spot_user.destroy
    redirect_to spot_path(spot), notice: "コメントを削除しました。"
  end

  private

  def spot_user_params
    params.require(:spot_user).permit(:comment, :image, :spot_id, :user_id)
  end
end
