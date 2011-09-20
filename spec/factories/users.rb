
Factory.define :user do |f|
  # f.sequence(:name) { |n| "foo#{n}" }
  #f.sequence(:email) { |n| "foo#{n}@example.com" }
  f.name     { Faker::Internet.user_name }
  f.email    { Faker::Internet.email }
  f.password "foobar"
  f.password_confirmation { |u| u.password }
end