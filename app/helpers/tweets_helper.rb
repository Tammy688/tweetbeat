module TweetsHelper
  def set_num_comments(tweet_id)
    num_comments = Comment.where(tweet_id: tweet_id)
    tweet =  Tweet.find(tweet_id)
    tweet.num_comments = num_comments
    tweet.save
  end
end
