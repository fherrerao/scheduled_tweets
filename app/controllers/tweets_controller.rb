class TweetsController < ApplicationController
  before_action :login_required!
  
  def index
    @tweet = Current.user.tweets
  end

  def new
    
  end
end
