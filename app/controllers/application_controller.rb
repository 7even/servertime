class ApplicationController < ActionController::Base
  protect_from_forgery
private
  def authorize_user
    if session[:user_id].blank?
      redirect_to login_url, :notice => 'Unauthorized access forbidden'
    else
      @current_user = User.find(session[:user_id])
    end
  end
end
