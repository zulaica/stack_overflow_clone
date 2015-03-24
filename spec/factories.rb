FactoryGirl.define do
  factory :question do
    user
    title 'Rails Integration'
    body 'How do I get to be mega dope?'
    published Time.now
  end

  factory :user do
    sequence(:username) { |n| "user#{n}" }
    sequence(:email) { |n| "user#{n}@domain.tld" }
    password "password1234"
    password_confirmation "password1234"
  end

  factory :response do
    question
    body "Keep on keepin' on."
    published Time.now
  end
end
