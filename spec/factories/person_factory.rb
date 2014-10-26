require 'faker'

FactoryGirl.define do
  factory :person do
    email { Faker::Internet.email }
    name { Faker::Name.name }
    web { Faker::Internet.url }
    twitter { Faker::Internet.url('twitter.com') }
    github { Faker::Internet.url('github.com') }
    bypass_humanizer true
  end
end
