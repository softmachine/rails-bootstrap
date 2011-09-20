
Factory.define :blog_post do |f|
  f.sequence(:name) { |n| "post#{n}" }
  f.sequence(:title) { |n| "my wonderful message #{n}" }
  f.content { Faker::Lorem.paragraphs }
end
