# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :instrument do
    type ""
    age 1
    organization "MyString"
    borrower_first_name "MyString"
    borrower_last_name "MyString"
    borrower_email "MyString"
    story "MyText"
    size "MyString"
  end
end
