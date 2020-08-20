require 'kramdown'
require 'uri'
require 'net/http'
require 'json'

class PagesController < ApplicationController
  def group; end

  def irc; end

  def main
    @announcements = Announcement.all.order(created_at: :desc)
  end

  def events
    group = 'Ruby-Turkiye'
    url_detail = 'events?sign=true&photo-host=public&photo-host=public&page=20&page=20'
    url = URI("https://api.meetup.com/#{group}/#{url_detail}")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    response = http.request(request)

    @events = JSON.parse(response.read_body)

    respond_to do |format|
      format.html
      format.json { render json: @events }
    end
  end

  def code_of_conduct
    @payload = File.read("#{Rails.root}/code-of-conduct.md")
  end
end
