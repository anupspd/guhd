class SessionsController < ApplicationController
	include SessionsHelper
  def new
  	@title="Sign In"
  end
  def create
  	user = Login.authenticate(params[:session][:email],
                           params[:session][:password])
     if user.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Sign in"
      render 'new'
  else
  	sign_in user
    render 'userHome'
  end
  end

  def show

  end
end
