# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to events_path, success: 'ユーザー登録が完了しました'
    else
      flash.now[:danger] = 'ユーザー登録に失敗しました'
      render :new
    end
  end

  def show
    # プロファイル全般
    @user = User.find(id: params[:id])
    # フォロー関係
    @events = @user.events.page(params[:page]).reverse_order
    @following_users = @user.following_user
    @follower_users = @user.follower_user
  end

  def follows
    @user = User.find_by(id: params[:id])
    @users = @user.following_user.page(params[:page]).per(3).reverse_order
  end

  def followers
    @user = User.find_by(id: params[:id])
    @users = @user.follower_user.page(params[:page]).per(3).reverse_order
  end

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation, :hobby, :profile)
  end
end
