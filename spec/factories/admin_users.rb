require 'faker'

FactoryBot.define do
  factory :admin_user do
    email Faker::Internet.email('admin')
    password 'password'
  end
end
