class Company < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  include Humanizer
  require_human_on :create
end
