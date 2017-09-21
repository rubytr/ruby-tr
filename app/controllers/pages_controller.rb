require "kramdown"
class PagesController < ApplicationController
  def group
  end

  def irc
  end

  def main
    @announcements = Announcement.all.order(created_at: :desc)
  end
end
