class HallResController < ApplicationController
  before_action :set_hall_re, only: [:show, :edit, :update, :destroy]

  # GET /hall_res
  # GET /hall_res.json
  def index
    @hall_res = HallRe.all
  end

  # GET /hall_res/1
  # GET /hall_res/1.json
  def show
  end

  # GET /hall_res/new
  def new
    @hall_re = HallRe.new
  end

  # GET /hall_res/1/edit
  def edit
  end

  # POST /hall_res
  # POST /hall_res.json
  def create
    @hall_re = HallRe.new(hall_re_params)

    respond_to do |format|
      if @hall_re.save
        format.html { redirect_to @hall_re, notice: 'Hall re was successfully created.' }
        format.json { render :show, status: :created, location: @hall_re }
      else
        format.html { render :new }
        format.json { render json: @hall_re.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hall_res/1
  # PATCH/PUT /hall_res/1.json
  def update
    respond_to do |format|
      if @hall_re.update(hall_re_params)
        format.html { redirect_to @hall_re, notice: 'Hall re was successfully updated.' }
        format.json { render :show, status: :ok, location: @hall_re }
      else
        format.html { render :edit }
        format.json { render json: @hall_re.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hall_res/1
  # DELETE /hall_res/1.json
  def destroy
    @hall_re.destroy
    respond_to do |format|
      format.html { redirect_to hall_res_url, notice: 'Hall re was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hall_re
      @hall_re = HallRe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hall_re_params
      params.require(:hall_re).permit(:reservation_id, :hall)
    end
end
