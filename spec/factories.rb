FactoryGirl.define do
  factory :contractor do
    sequence(:firstName)  { |n| "Person #{n}" }
    sequence(:lastName)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"

  end
end