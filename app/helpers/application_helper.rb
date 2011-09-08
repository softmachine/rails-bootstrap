module ApplicationHelper

  def nav_item(name, link_opts)
    link2 = link_to name, link_opts, nil
    actcls = current_page?(link_opts) ? "class=\"active\"" : ""

    return "<li #{actcls} > #{link2} </li>".html_safe
  end

  def alert(msg, type='info')
    result = render :layout => "layouts/parts/msg", :locals => { :type => type } do
        msg
    end
  end
end
