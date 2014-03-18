FactoryGirl.define do
  factory :user do
    name     "Dimitri Akimaru"
    email    "akimaru@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end