# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :device do
    name "MyString"
    kind "MyString"
    product_id 1
    site_id 1
  end
end
