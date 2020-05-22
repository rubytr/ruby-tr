require 'faker'

FactoryBot.define do
  factory :announcement do
    title { Faker::Hipster.sentence }
    content { Faker::Hipster.paragraph }
  end
end
