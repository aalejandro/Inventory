# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :site do
    name "Test1"
    open_mobile_site_id 1
    direction "west"
  end
end
