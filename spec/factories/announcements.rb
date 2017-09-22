require 'faker'

FactoryGirl.define do
  factory :announcement do
    title Faker::Hipster.sentence
    content Faker::Hipster.paragraph(20)
    admin_user
  end
end
