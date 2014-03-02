class WelcomeController < ApplicationController
  def index
    @last10 = Tweet.last(10)
    @user = current_user.email
  end
end
