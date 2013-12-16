class Person < ActiveRecord::Base
  validates :name, :email, presence: true
  validates :name, :email, uniqueness: true
  before_save :get_gravatar_url
  include Humanizer
  require_human_on :create

  def get_gravatar_url
    self.gravatar_url = Gravatar.new(self.email).image_url
  end

end
