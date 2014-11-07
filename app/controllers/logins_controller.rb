class LoginsController < ApplicationController
 def index
	@logins = Login.all
 end

 def new
    @login = Login.new
 end

 def create
  @login = Login.new(user_params)

    respond_to do |format|
      @login.save
    end
 end

 def destroy
  @login.destroy
  respond_to do |format|
  format.html { redirect_to users_url, notice: 'User successfully destroyed.' }
  format.json { head :no_content }
  end
 end

private
    def set_user
      @login = Login.find(params[:id])
    end

    def user_params
      params.require(:login).permit(:Username,:Password)
    end
end
