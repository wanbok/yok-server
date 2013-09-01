class AvatarsController < ApplicationController
  before_action :set_avatar, only: [:show]
  before_filter :authenticate_user!

  def show
  end

  private
  def set_avatar
    @avatar = Avatar.find_by(user: current_user)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def avatar_params
    params.require(:avatar).permit(:head, :head_back, :head_front, :torso, :torso_back, :torso_front, :leg, :leg_back, :leg_front, :whole_back, :accessary)
  end
end
