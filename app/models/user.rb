class User < ActiveRecord::Base
  validates :name, presence: true

  include Humanizer
  before_save :get_gravatar_url
  attr_accessor :bypass_humanizer
  require_human_on :create, unless: :bypass_humanizer
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:github]
  default_scope { order(created_at: :asc) }

  def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_create do |user|
      user.email = auth.info.email
      user.uid = auth.uid
      user.provider = auth.provider
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
    end
  end

  private

  def get_gravatar_url
    self.gravatar_url = Gravatar.new(self.email).image_url
  end
end
