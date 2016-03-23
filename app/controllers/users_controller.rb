class UsersController < ApplicationController
  def new
  	#flash[:errors] = nil
  end

  def show
    @user = User.find(params[:id])
  end

  def create
  	user = User.new(user_params)

  	if user.save
      session[:user_id] = user.id
      redirect_to "/users/#{user.id}"
    else
      flash[:errors] = user.errors.full_messages
      redirect_to :back
    end

  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end