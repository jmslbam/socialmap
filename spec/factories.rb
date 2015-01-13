FactoryGirl.define do 

  factory :user do
    sequence(:email) { |n| "email#{n}@gmail.com"}
    password "password"
    password_confirmation "password"
  end
  
  factory :event do
    sequence(:name) { |n| "#{n} My Awesome Event" }
    address "123 Space St."
    location "Space"
    city "Rocketville"
    state "MA"
    question "Who do you think is best at this meeting?"
    passphrase "This is my secret password"
    description "This event weeds out people who are underpreforming"
    user
  end
end