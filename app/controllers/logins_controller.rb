class LoginsController < ApplicationController
 def index
	@logins = Login.all
 end

 def new
    @login = Login.new
 end
 def show
  @user = Login.find(params[:id])
 end

 def create
  @login = Login.new(user_params)

    respond_to do |format|
      @login.save
    end
 end


#def checkLogin
 #   @log=Login.find_by email: @login.email
  #  if @log.Password == user_params.Password   
   #     format.html { redirect_to @user, notice: 'User was successfully created.' }
    #    format.json { render :show, status: :created, location: @user }
     # else
      #  format.html { render :new }
       # format.json { render json: @user.errors, status: :unprocessable_entity }
      #end
# end

private
    def set_user
      @login = Login.find(params[:id])
    end

    def user_params
      params.require(:login).permit(:email,:Password)
    end
end
