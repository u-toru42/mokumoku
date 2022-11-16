class ProfilesController < ApplicationController
  def show
    # プロファイル全般
    @user = User.find_by(id: params[:id])
    # フォロー関係
    @events = @user.events.page(params[:page]).reverse_order
    @following_users = @user.following_user
    @follower_users = @user.follower_user
  end

  def follows
    user = User.find_by(id: params[:id])
    @users = user.following_user.page(params[:page]).reverse_order
  end

  def followers
    user = User.find_by(id: params[:id])
    @users = user.follower_user.page(params[:page]).reverse_order
  end

  def show_follow
    @user = User.find(id: params[:id])
    @posts = @user.posts.page(params[:page]).reverse_order
    @following_users = @user.following_user
    @follower_users = @user.follower_user
  end

end
