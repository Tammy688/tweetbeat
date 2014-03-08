class WelcomeController < ApplicationController
  def index
    @show10 = Tweet.all.sample(10)
    @test = Tweet.first
    #cannot pass local variable into instance variable
    #@user = (User.find(@tweet.user_id)).username
  end

  def about

  end
end
