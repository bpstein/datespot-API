FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "test#{n}@example2.com"
    end

    name 'John Smith'
    password '12345678'
    password_confirmation '12345678'
  end
end
