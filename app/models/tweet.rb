class Tweet < ActiveRecord::Base
  belongs_to :user
  validates :tweet_text, presence: true, length: { 
    maximum: 2} #too_long: "350 characters is the maximum allowed"}
end
