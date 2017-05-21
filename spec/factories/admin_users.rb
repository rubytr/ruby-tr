FactoryGirl.define do
  factory :admin_user do
    sequence :email do |n|
      "admin_#{n}@mail.com"
    end
    password 'some weird password'
  end
end
