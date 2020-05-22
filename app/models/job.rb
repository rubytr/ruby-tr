class Job < ApplicationRecord
  validates :title, :company, :description, :link, :location, presence: true
end
