# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dependency do
    extension_id 1
    dependent_id 1
    create "MyString"
    destroy "MyString"
  end
end
