class User < ActiveRecord::Base
  validates :name, presence: true

  include Humanizer
  before_save :get_gravatar_url
  attr_accessor :bypass_humanizer
  require_human_on :create, unless: :bypass_humanizer
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:github]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
    end
  end

  private

  def get_gravatar_url
    self.gravatar_url = Gravatar.new(self.email).image_url
  end
end
