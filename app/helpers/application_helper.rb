module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Podcast Central"
    if page_title.empty?
		base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def image_to_base64(bean)
    if(!bean.image.blank?)
      bean.image64 = Base64.encode64(bean.image.read)
    end
  end
end
