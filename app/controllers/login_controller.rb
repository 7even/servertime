class LoginController < ApplicationController
  def login
    if request.post?
      if user = User.authorize(params[:login], params[:password])
        session[:user_id] = user.id
        redirect_to root_url
      else
        flash[:now] = 'Incorrect login or password'
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to login_url
  end

end
