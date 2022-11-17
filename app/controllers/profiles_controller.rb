class ProfilesController < ApplicationController
  include ProfileFollow
  before_action :user_find
end
