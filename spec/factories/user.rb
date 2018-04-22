FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "mail_#{n}@mail.com"
    end
    sequence :name do |n|
      "Abidik Gubigik #{n}"
    end
    password 'some weird password'
    bypass_humanizer true
  end
end
