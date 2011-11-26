class PageEditorController < MercuryController
  before_filter :auth


  def auth
    authenticate_user!
  end
end