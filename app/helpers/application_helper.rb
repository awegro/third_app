module ApplicationHelper

  def logo
    logo = image_tag("logo.png")
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Matt Miller for President"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end