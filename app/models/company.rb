class Company < ActiveRecord::Base
  after_commit :send_notification, on: :create

  validates :title, :sector, :city, :url, presence: true

  include Humanizer
  attr_accessor :bypass_humanizer
  require_human_on :create, unless: :bypass_humanizer

  scope :published, -> { where(published: true) }

  def send_notification
    Slack::Notifier.new(ENV['WEBHOOK_URL']).ping("Yeni şirket eklendi: #{Company.last.title}")
  end

end
