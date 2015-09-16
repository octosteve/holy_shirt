class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "You have been successfully Logged in!"
    else
      redirect_to root_path, alert: "Sadness happened"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "You have been successfully logged out!"
  end
end
