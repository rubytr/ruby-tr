FactoryGirl.define do 
  factory :person do
    sequence :email do |n|
      "mail_#{n}@mail.com"
    end
    sequence :name do |n|
      "Abidik Gubigik #{n}"
    end
    bypass_humanizer true
  end
end