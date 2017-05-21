class Company < ActiveRecord::Base
  require 'activity_notification/optional_targets/slack'
  validates :title, :sector, :city, :url, presence: true

  include Humanizer
  attr_accessor :bypass_humanizer
  require_human_on :create, unless: :bypass_humanizer

  scope :published, -> { where(published: true) }

  include ActivityNotification::Notifiable
  acts_as_notifiable :admin_users,
    notifier: :admin_user,
    targets: [AdminUser.first].compact,
    optional_targets: {
      ActivityNotification::OptionalTarget::Slack  => {
        webhook_url: ENV['WEBHOOK_URL'],
        target_username: 'ekrem.karaca',
        channel: 'rastgele',
        username: 'activity_notification'
    }
  }
end
