FactoryBot.define do
  factory :company do
    sequence :title do |n|
      "#{n} company"
    end
    sector 'A sector'
    url 'http://example.com'
    github 'http://github.com'
    twitter 'http://twitter.com'
    city 'A city'
    user_id 1
  end
end
