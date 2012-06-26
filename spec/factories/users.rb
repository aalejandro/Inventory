FactoryGirl.define do
  factory :user do
    sequence(:email) {i "user_#{i}@gmail.com"}
    password "passphrase"
    password_confirmation "passphrase"
      factory :user_ash do
        email 'ash@gmail.com'
      end
      factory :user_mike do
        email 'mike@gmail.com'
      end
      factory :user_wrong_email do
        email 'mike@gmail.com'
      end
  end
end
