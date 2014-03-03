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
  rand(12..25).times do
    tweet = Tweet.new(tweet_text: Faker::Lorem.words(rand(25..40)).join(" "),
                      user_id: user.id)
    tweet.save
  end
end

tweets = Tweet.all
tweets.each do |tweet|
  rand(3..12).times do
    comment = Comment.new(comment_text: Faker::Lorem.words(rand(15..25)).join(" "),
                      tweet_id: tweet.id)
    comment.save
  end
end

puts "#{User.count} users created."
puts "#{Tweet.count} tweets created."
puts "#{Comment.count} comments created."