# frozen_string_literal: true

class ProfilesController < ApplicationController
  include FollowProfile
  before_action :find_user, only: %i[show followings followers]

  def show
    @user = find_user
  end

  def followings
    @users = find_followings
  end

  def followers
    @users = find_followers
  end

end
