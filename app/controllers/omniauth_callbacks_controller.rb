class OmniauthCallbacksController < ApplicationController
  before_action :login_required!

  def twitter
    twitter_account = Current.user.twitter_accounts.where(username: auth.info.nickname).first_or_initialize
    twitter_account.update(
      name: auth.info.name,
      username: auth.info.nickname,
      image: auth.info.image,
      token: auth.info.token,
      secret: auth.info.secret,
    )
    redirect_to twitter_accounts_path, notice: "Succesfully connected your Twitter account"
  end
  
  def auth
    request.env['omniauth.auth']
  end
end
