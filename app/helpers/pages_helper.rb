module PagesHelper

  def pages_links ()
    markup = ""
    Page.find_each do |page|
      markup += "<li>"+link_to(page.name, page_path(page.name))+"</li>\n"
    end

    return markup
  end

  def is_page?
    controller.controller_name  == "pages" && controller.action_name == 'show' && user_signed_in?
  end

end
