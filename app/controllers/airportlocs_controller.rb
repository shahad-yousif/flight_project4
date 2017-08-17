class AirportlocsController < ApplicationController
  before_action :set_airportloc, only: [:show, :edit, :update, :destroy]

  # GET /airportlocs
  # GET /airportlocs.json
  def index
    @airportlocs = Airportloc.all
  end

  # GET /airportlocs/1
  # GET /airportlocs/1.json
  def show
  end

  # GET /airportlocs/new
  def new
    @airportloc = Airportloc.new
  end

  # GET /airportlocs/1/edit
  def edit
  end

  # POST /airportlocs
  # POST /airportlocs.json
  def create
    @airportloc = Airportloc.new(airportloc_params)

    respond_to do |format|
      if @airportloc.save
        format.html { redirect_to @airportloc, notice: 'Airportloc was successfully created.' }
        format.json { render :show, status: :created, location: @airportloc }
      else
        format.html { render :new }
        format.json { render json: @airportloc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airportlocs/1
  # PATCH/PUT /airportlocs/1.json
  def update
    respond_to do |format|
      if @airportloc.update(airportloc_params)
        format.html { redirect_to @airportloc, notice: 'Airportloc was successfully updated.' }
        format.json { render :show, status: :ok, location: @airportloc }
      else
        format.html { render :edit }
        format.json { render json: @airportloc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airportlocs/1
  # DELETE /airportlocs/1.json
  def destroy
    @airportloc.destroy
    respond_to do |format|
      format.html { redirect_to airportlocs_url, notice: 'Airportloc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airportloc
      @airportloc = Airportloc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airportloc_params
      params.require(:airportloc).permit(:address, :latitude, :longitude)
    end
end
