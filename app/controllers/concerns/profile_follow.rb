require 'active_support'

module ProfileFollow
  extend ActiveSupport::Concern

  def follows
    @users = @following_users.page(params[:page]).reverse_order
  end

  def followers
    @users = @follower_users.page(params[:page]).reverse_order
  end

  private

  def user_find
    # プロフィール全般
    @user ||= User.find(params[:id])
    # フォロー関係
    @following_users = @user.following_user
    @follower_users = @user.follower_user
  end
end