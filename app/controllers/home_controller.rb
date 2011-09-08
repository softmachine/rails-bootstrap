class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => 'secret'

  def index
    redirect_to :action => 'home'
  end

  def home
  end

  def notyet

  end

  def secret


  end

end
