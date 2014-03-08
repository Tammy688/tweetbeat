class ProfilesController < ApplicationController
  def index
  end

  def show
    @last10 = Tweet.where(user_id: current_user.id)
              #replace with Tweet.user.user_id
  end
end
