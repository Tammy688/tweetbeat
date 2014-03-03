# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

50.times do
  image = "http://lorempixel.com/160/120/animals"
  name = Faker::Name.first_name
  user = User.new(email: Faker::Internet.email,
                  password: 'password',
                  photo_url: image,
                  username: name)
  user.save
end

mj = User.new(email: 'mwjordan9@live.com',
              password: 'password',
              photo_url: 'http://lorempixel.com/160/120/animals',
              username: 'Mike')
mj.save

users = User.all
users.each do |user|
  rand(12..25).times do
    content = []
    rand(8..12).times do
      content.push(Faker::Company.catch_phrase)
    end
    content = (content.join(" ") + ".").capitalize
    tweet = Tweet.new(tweet_text: content,
                      user_id: user.id)                     
    tweet.save
  end
end

tweets = Tweet.all
tweets.each do |tweet|
  rand(4..8).times do
    content = []
    author = rand(1..50)
    rand(3..6).times do
      content.push(Faker::Company.catch_phrase)
    end
    content = (content.join(" ") + ".").capitalize
    comment = Comment.new(comment_text: content,
                          tweet_id: tweet.id,
                          user_id: author)
    comment.save
  end
end

puts "#{User.count} users created."
puts "#{Tweet.count} tweets created."
puts "#{Comment.count} comments created."
