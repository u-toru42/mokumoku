# frozen_string_literal: true

require 'active_support'

module FollowProfile
  extend ActiveSupport::Concern

  def show; end

  def followings
    @users = @user.followings.page(params[:page]).reverse_order
  end

  def followers
    @users = @user.followers.page(params[:page]).reverse_order
  end

  private

  def find_user
    @user ||= User.find(params[:id])
  end
end
