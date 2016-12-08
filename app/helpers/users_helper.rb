module UsersHelper
  def url_with_protocol(url)
    unless url.try(:empty?)
      /^http/.match(url) ? url : "http://#{url}"
    else
      "#"
    end
  end

  def gravatar_picture user
    image_tag "#{user.gravatar_url}?s=250", width: "125"
  end

  def twitter_url user
    "http://twitter.com/#{user.twitter}"
  end

  def github_url user
    "http://github.com/#{user.github}"
  end
end
