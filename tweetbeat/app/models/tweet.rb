class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :tweet_text, presence: true, length: {
    maximum: 350, too_long: "350 characters is the maximum allowed"}
end
