module UsersHelper
  def gravatar_url(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=mm"
    # image_tag(gravatar_url, alt: user.name, class:"gravatar")
  end
end
