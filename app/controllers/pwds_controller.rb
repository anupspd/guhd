class PwdsController < ApplicationController
	include PwdsHelper

 def new
  	@title="Forgot Password"
 end

 def create
   user=Login.find_by_email(params[:pwds][:email])
   if user.nil?
      render 'forgotPwd'
   else
   store user
   UserMailer.forgot_pwd(user).deliver
   end
   end


  def show
     render 'forgotPwd'
  end

end
