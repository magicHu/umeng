class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :login
  
  public
  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end
  
  private
  def login
    unless session[:user_id]
      redirect_to login_url
    end
  end
end
