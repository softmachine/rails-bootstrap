class PageController < ApplicationController
  before_filter :my_auth, :unless => :devise_controller?
  # until something more elaborate has been figured out
  @@protected_pages = ['secret', 'lies']

  def show
    page = params[:page] || "notyet"
    logger.info "attempt to render page #{page}"
    begin
      render "page/#{page}"
    rescue ActionView::MissingTemplate
      logger.warn "page not found: '#{page}'"
      render "page/notyet"
      return
    end
  end

protected
  def my_auth
    authenticate_user! if @@protected_pages.index(params[:page])
  end

end
