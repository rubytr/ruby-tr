class Person < ActiveRecord::Base
  validates_presence_of :name, :email
  validates_uniqueness_of :name, :email
end
