class TwitterAccountsController < ApplicationController
  before_action :login_required!
  before_action :set_twitter_account, only: [:destroy]

  def index
    @twitter_accounts = Current.user.twitter_accounts
  end

  def destroy
    if @twitter_account.destroy
      redirect_to twitter_accounts_path, notice: "Succesfully disconnected @#{@twitter_account.username}"
    else
      render twitter_accounts_path
    end
  end
  
  private

  def set_twitter_account
    @twitter_account = Current.user.twitter_accounts.find(params[:id])
  end
end
