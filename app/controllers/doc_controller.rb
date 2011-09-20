class DocController < ApplicationController
  # this is the original doc. broken down in parts and layout. this should be pretty re-usable
  layout "bootstrap/doc"

  def index
     redirect_to :action => "overview"
  end

  def static
    render :text => "", :layout => 'bootstrap/static'
  end

  def overview
  end

  def about
  end

  def grid
  end

  def layouts
  end

  def typo
  end

  def media
  end

  def tables
  end

  def forms
  end

  def navigation
  end

  def alerts
  end

  def popovers
  end

  def javascript
  end

  def less
  end
end
