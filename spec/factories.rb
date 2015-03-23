FactoryGirl.define do
  factory :question do
    title 'Rails Integration'
    body 'How do I get to be mega dope?'
    published Time.now
  end

  factory :user do
    username "user"
    email "user@domain.tld"
    password "password1234"
    password_confirmation "password1234"
  end
end
