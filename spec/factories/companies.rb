FactoryGirl.define do
  factory :company do
    title "Company 1"
    sector "Tech"
    url "company1.net"
    github "company1"
    twitter "company1"
    city "Gotham"
    bypass_humanizer true
  end
end
