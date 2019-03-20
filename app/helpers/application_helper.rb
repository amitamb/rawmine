module ApplicationHelper
  def nav_link(text, url, method: nil)
    active_class = nil
    if current_page?(url)
      active_class = 'active'
    end
    tag.li class: ['nav-item', active_class].compact.join(' ')  do
      link_to text, url, class: 'nav-link', method: method
    end
  end
end
