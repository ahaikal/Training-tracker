class SessionsController < ApplicationController

	def new
  end

  def create
    user = Admin.find_by(email: params[:sessions][:email])
    if user && user.authenticate(params[:sessions][:password])
      session[:user_id] = user.id
      redirect_to "user.index"
    else
      flash.now[:error] = "Invalid email and/or password"
      render 'new'
    end
  end

  def destroy
    session.clear
    redirect_to :root
  end


end
