class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    else
      flash.now[:danger] = 'invalid email/password combination'
      render 'new'
    end
    def destroy
      log_out
      redirect_to root_url
    end
  end
end