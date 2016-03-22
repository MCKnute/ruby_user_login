class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user
    else
      flash[:errors] = ["Invalid combination with wrong username and/or wrong password"]
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:errors] = ["You have successfully logged out"]
    redirect_to new_session_path
  end
end

