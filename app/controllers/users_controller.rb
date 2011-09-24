class UsersController < ApplicationController
  def show
    logger.info ("start fetching user id #{params[:id]}")
    @user = User.find(params[:id])
    logger.info ("found user #{@user.name}")
  end
end
