class PasswordsController < ApplicationController
  before_action :login_required!
  
  def edit
  end

  def update
    if Current.user.update(password_params)
      redirect_to root_path, notice: "Pasword has been updated succesfully!"
    else
      render :edit
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
