class UsersController < ApplicationController

include ApplicationHelper

  def create
    user = User.new(params[:user])
    if user.valid?
      user.save
      create_user_session(user)
      redirect_to root_path
    else
      @errors = user.errors.full_messages
      @user = user
      render "writings/index"
    end

  end
end