# frozen_string_literal: true

class ProfilesController < ApplicationController
  include FollowProfile
  before_action :find_user, only: %i[show followings followers]
end
