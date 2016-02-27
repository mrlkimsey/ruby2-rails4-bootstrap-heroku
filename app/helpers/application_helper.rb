module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title.to_s }
  end

  def yield_or_default(section, default = '')
    content_for?(section) ? content_for(section) : default
  end

  def support_cell(supported)
    if supported
      content_tag :td, 'Yes', class: 'supported'
    else
      content_tag :td, 'No', class: 'not-supported'
    end
  end
end
