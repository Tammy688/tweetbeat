# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

50.times do 
  user = User.new(email: Faker::Internet.email, 
                  password: 'password')
  user.save
end

users = User.all
users.each do |user|
  12.times do
    tweet = Tweet.new(tweet_text: Faker::Lorem.words(40).join(" "),
                      user_id: user.id)
    tweet.save
  end
end

puts "#{User.count} users created."
puts "#{Tweet.count} tweets created."