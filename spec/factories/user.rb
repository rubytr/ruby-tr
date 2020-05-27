FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "mail_#{n}@mail.com"
    end
    sequence :name do |n|
      "Abidik Gubigik #{n}"
    end
    password { 'some weird password' }
    github { 'abidik_github_url' }
    twitter { 'gubidik_twitter_url' }
    gravatar_url { 'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50' }
    web { 'www.abidikgubidik.blogger.com' }
  end
end
