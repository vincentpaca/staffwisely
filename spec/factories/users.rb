# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "vince@staffwisely.com"
    full_name "Vincent Paca"
    password "password"
    password_confirmation "password"
  end
end
