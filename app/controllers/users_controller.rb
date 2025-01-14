# frozen_string_literal: true

class UsersController < ApplicationController
  include FollowProfile
  before_action :find_user, only: %i[show followings followers]

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

  def followings
    @users = find_followings
  end

  def followers
    @users = find_followers
  end

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation, :hobby, :profile)
  end
end
