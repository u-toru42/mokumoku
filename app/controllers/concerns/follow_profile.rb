# frozen_string_literal: true

require 'active_support'

module FollowProfile
  extend ActiveSupport::Concern

  def find_followings
    User.find(params[:id]).followings.page(params[:page]).reverse_order
  end

  def find_followers
    User.find(params[:id]).followers.page(params[:page]).reverse_order
  end

  private

  def find_user
    User.find(params[:id])
  end
end
