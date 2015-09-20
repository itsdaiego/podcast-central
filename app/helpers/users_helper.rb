module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user (sample_app_rails 4).
  def gravatar_pic(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def image_to_base64(user)
    if(user.image64)
      user.image64 = Base64.encode64(user.image.read)
    end
  end
end
