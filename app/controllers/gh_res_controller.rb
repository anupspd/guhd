class GhResController < ApplicationController
  before_action :set_gh_re, only: [:show, :edit, :update, :destroy]

  # GET /gh_res
  # GET /gh_res.json
  def index
    @gh_res = GhRe.all
  end

  # GET /gh_res/1
  # GET /gh_res/1.json
  def show
  end

  # GET /gh_res/new
  def new
    @gh_re = GhRe.new
  end

  # GET /gh_res/1/edit
  def edit
  end

  # POST /gh_res
  # POST /gh_res.json
  def create
    @gh_re = GhRe.new(gh_re_params)

    respond_to do |format|
      if @gh_re.save
        format.html { redirect_to @gh_re, notice: 'Gh re was successfully created.' }
        format.json { render :show, status: :created, location: @gh_re }
      else
        format.html { render :new }
        format.json { render json: @gh_re.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gh_res/1
  # PATCH/PUT /gh_res/1.json
  def update
    respond_to do |format|
      if @gh_re.update(gh_re_params)
        format.html { redirect_to @gh_re, notice: 'Gh re was successfully updated.' }
        format.json { render :show, status: :ok, location: @gh_re }
      else
        format.html { render :edit }
        format.json { render json: @gh_re.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gh_res/1
  # DELETE /gh_res/1.json
  def destroy
    @gh_re.destroy
    respond_to do |format|
      format.html { redirect_to gh_res_url, notice: 'Gh re was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gh_re
      @gh_re = GhRe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gh_re_params
      params.require(:gh_re).permit(:reservation_id, :guestType, :guestName, :guestSex, :guestAge, :guestEMail, :guestPhone)
    end
end
