class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  private
  
  def require_user_logged_in
    # ログインしていないと、ログイン画面に飛ばす
    unless logged_in?
      redirect_to login_url
    end
  end
end
