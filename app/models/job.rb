class Job < ActiveRecord::Base
  validates :title,:company, :description, :link, :location, presence: true

  include Humanizer
  attr_accessor :bypass_humanizer
  require_human_on :create, unless: :bypass_humanizer

end
