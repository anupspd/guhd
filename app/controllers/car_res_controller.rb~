class CarResController < ApplicationController
  before_action :set_car_re, only: [:show, :edit, :update, :destroy]

  # GET /car_res
  # GET /car_res.json
  def index
    @car_res = CarRe.all
  end

  # GET /car_res/1
  # GET /car_res/1.json
  def show
  end

  # GET /car_res/new
  def new
    @car_re = CarRe.new
  end

  # GET /car_res/1/edit
  def edit
  end

  # POST /car_res
  # POST /car_res.json
  def create
    @car_re = CarRe.new(car_re_params)

    respond_to do |format|
      if @car_re.save
        format.html { redirect_to @car_re, notice: 'Car re was successfully created.' }
        format.json { render :show, status: :created, location: @car_re }
      else
        format.html { render :new }
        format.json { render json: @car_re.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_res/1
  # PATCH/PUT /car_res/1.json
  def update
    respond_to do |format|
      if @car_re.update(car_re_params)
        format.html { redirect_to @car_re, notice: 'Car re was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_re }
      else
        format.html { render :edit }
        format.json { render json: @car_re.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_res/1
  # DELETE /car_res/1.json
  def destroy
    @car_re.destroy
    respond_to do |format|
      format.html { redirect_to car_res_url, notice: 'Car re was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_re
      @car_re = CarRe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_re_params
      params.require(:car_re).permit(:reservation_id, :source, :destination)
    end
end
