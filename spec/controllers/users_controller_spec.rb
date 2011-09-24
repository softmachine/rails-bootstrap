require 'spec_helper'

describe UsersController do

  def show
    @user = User.find(params[:id])
  end

end
