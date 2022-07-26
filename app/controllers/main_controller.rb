class MainController < ApplicationController
  def index
    flash.now[:notice] = "Welcome to the site!"
    flash.now[:alert] = "This is an alert"    
  end
end
