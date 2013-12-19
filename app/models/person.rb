class Person < ActiveRecord::Base
  validates :name, :email, presence: true
  validates :name, :email, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

  before_save :get_gravatar_url
  include Humanizer
  require_human_on :create

  def get_gravatar_url
    self.gravatar_url = Gravatar.new(self.email).image_url
  end

end
