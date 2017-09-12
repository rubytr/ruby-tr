class User < ApplicationRecord
  validates :name, presence: true

  include Humanizer
  before_save :get_gravatar_url
  attr_accessor :bypass_humanizer
  require_human_on :create, unless: :bypass_humanizer
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:github]
  default_scope { order(created_at: :asc) }

  def self.from_omniauth(auth)
    where('email=? OR uid=?', auth.info.email, auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.uid = auth.uid
      user.gravatar_url = auth.info.image if auth.info.image
      user.provider = auth.provider
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      user.github = auth.extra.raw_info.login
    end
  end

  private

  def get_gravatar_url
    self.gravatar_url = Gravatar.new(email).image_url
  end
end
