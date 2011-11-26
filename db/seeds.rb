# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# create some regular users
#
#["Hugo", "Otto", "Franz"].each do |uname|
#  user = User.new email:                 "#{ uname }@testing.com",
#                  name:                  "#{uname}",
#                  password:              'testing',
#                  password_confirmation: 'testing'
#
#
#  user.save rescue ActionView::Template::Error
#  user.save
#  user.confirm!
#  puts "created user #{uname}"
#end
#
require 'factory_girl'
# Dir[Rails.root.join("spec/factories/*.rb")].each {|f| require f}

public
def make_user(user)
  user.save
  user.confirm!
  puts "created user #{user.name} (#{user.email})"

  user
end

# create users
20.times do
  make_user(Factory.build :user)
end
make_user(Factory.build :user, :name => 'mike', :email => 'meb@kuhl.at')
make_user(Factory.build :user, :name => 'admin', :email => 'mkuhl@softmachine.at')

Factory.build(:page, :name => "default", :title => "This page does not exists", :content => "but it could...").save!
Factory.build(:page, :name => "about").save!
Factory.build(:page, :name => "contact").save!
Factory.build(:page, :name => "notyet").save!
Factory.build(:page, :name => "samples").save!

# create posts
#10.times do
#  post = Factory.build :blog_post
#  post.save
#  puts "created post #{post.title}"
#end

