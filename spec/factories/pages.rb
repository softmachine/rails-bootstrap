# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page do
    sequence(:name) { |n| "page#{n}" }
    title  "sample page"
    content "lore ipsum..."
  end
end
