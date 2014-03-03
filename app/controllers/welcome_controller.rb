class WelcomeController < ApplicationController
  def index
    @last10 = Tweet.last(10)
  end
end
