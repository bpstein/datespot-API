FactoryGirl.define do
  factory :admin_user do
    email 'admin@example.com'
    id 1
    password 'password'
    password_confirmation 'password'
  end
end
