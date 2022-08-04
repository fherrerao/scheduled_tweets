class TwitterAccountsController < ApplicationController
  before_action :login_required!
  def index
    @twitter_accounts = Current.user.twitter_accounts
  end

  def destroy
    @twitter_account = Current.user.twitter_accounts.find(params[:id])
    if @twitter_account.destroy
      redirect_to twitter_accounts_path, notice: "Succesfully disconnected @#{@twitter_account.username}"
    else
      render twitter_accounts_path
    end
  end
end
