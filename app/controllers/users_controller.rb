class UsersController < ApplicationController
  before_filter :authenticate_user!, only: [:show]
  before_filter :is_you, only: [:show]

  def show
    @user = User.where(phonenumber: params[:phonenumber]).first
  end

  private
  def is_you
    current_user.phonenumber == params[:phonenumber]
  end
end
