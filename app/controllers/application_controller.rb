# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  def login_required!
    redirect_to sign_in_path, alert: "Must be signed in to continue" if Current.user.nil?
  end
end
