class Announcement < ApplicationRecord
  belongs_to :admin_user
  validates :title, :content, presence: true
end
