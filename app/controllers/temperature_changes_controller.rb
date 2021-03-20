class TemperatureChangesController < ApplicationController
  before_action :set_temperature_change, only: %i[ show edit update destroy ]

  # GET /temperature_changes or /temperature_changes.json
  def index
    @temperature_changes = TemperatureChange.all
  end

  # GET /temperature_changes/1 or /temperature_changes/1.json
  def show
  end

  # GET /temperature_changes/new
  def new
    @temperature_change = TemperatureChange.new
  end

  # GET /temperature_changes/1/edit
  def edit
  end

  # POST /temperature_changes or /temperature_changes.json
  def create
    @temperature_change = TemperatureChange.new(temperature_change_params)

    respond_to do |format|
      if @temperature_change.save
        format.html { redirect_to @temperature_change, notice: "Temperature change was successfully created." }
        format.json { render :show, status: :created, location: @temperature_change }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @temperature_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temperature_changes/1 or /temperature_changes/1.json
  def update
    respond_to do |format|
      if @temperature_change.update(temperature_change_params)
        format.html { redirect_to @temperature_change, notice: "Temperature change was successfully updated." }
        format.json { render :show, status: :ok, location: @temperature_change }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @temperature_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temperature_changes/1 or /temperature_changes/1.json
  def destroy
    @temperature_change.destroy
    respond_to do |format|
      format.html { redirect_to temperature_changes_url, notice: "Temperature change was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temperature_change
      @temperature_change = TemperatureChange.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def temperature_change_params
      params.require(:temperature_change).permit(:room_id, :date, :time, :temperature_celsius)
    end
end
