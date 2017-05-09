class Company < ActiveRecord::Base
  validates :title, :sector, :city, :url, presence: true

  include Humanizer
  attr_accessor :bypass_humanizer
  require_human_on :create, unless: :bypass_humanizer

  scope :published, -> { where(published: true) }
end
