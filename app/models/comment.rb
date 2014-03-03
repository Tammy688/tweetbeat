class Comment < ActiveRecord::Base
  belongs_to :tweet
  #assign to user to enable random seeding
  belongs_to :user
end
