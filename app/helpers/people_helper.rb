module PeopleHelper
  def url_with_protocol(url)
    unless url.empty?
      /^http/.match(url) ? url : "http://#{url}"
    else
      "#"
    end
  end

	def gravatar_picture person
		image_tag "#{person.gravatar_url}?s=250", width: "125"
	end

	def twitter_url person
		"http://twitter.com/#{person.twitter}"
	end

	def github_url person
		"http://github.com/#{person.github}"
	end
end
