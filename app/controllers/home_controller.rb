class HomeController < ApplicationController
  before_filter :my_auth, :unless => :devise_controller?
  # until something more elaborate has been figured out
  @@protected_pages = ['secret', 'lies']

  def index
    render 'static/home'
  end

  def show
    page = params[:page] || "notyet"
    logger.info "attempt to render page #{page}"
    begin
      render "static/#{page}"
    rescue ActionView::MissingTemplate
      logger.warn "static page not found: '#{page}'"
      render "static/notyet", :status => 404
      return
    end
  end


protected
  def my_auth
    authenticate_user! if @@protected_pages.index(params[:page])
  end
end
