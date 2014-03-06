class ProfilesController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @last10 = Tweet.where(user_id: @user.id)
              #replace with Tweet.user.user_id
  end
end
