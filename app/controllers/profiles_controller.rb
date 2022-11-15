class ProfilesController < ApplicationController
  def show
    @user = User.find_by(profile_params[:id]) 
  end

  def profile_params
    params.permit(:id)
  end
end
