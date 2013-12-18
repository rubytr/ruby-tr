module PeopleHelper
  def url_with_protocol(url)
    unless url.empty?
      /^http/.match(url) ? url : "http://#{url}"
    else
      "#"
    end
  end
end
