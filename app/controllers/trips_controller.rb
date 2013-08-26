class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trip }
      else
        format.html { render action: 'new' }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url }
      format.json { head :no_content }
    end
  end

  def home

  end

  def search
    @travel = params[:search]
    dateStart = params[:dateStart]
    @possibleFlights = fakeFlightAPI(100, dateStart).sort {|x, y| x["flightDate"] <=> y["flightDate"]}


    render :planner
  end

  def fakeFlightAPI(n, dateStart)
    a = []
    dateStart = Date.strptime(dateStart, "%m/%d/%Y")
    for i in 0..n
      tempCompany = flightCompany()
      tempPrice = rand(100..1000)
      tempDate = Time.at(((dateStart + 60).to_time.to_f - dateStart.to_time.to_f)*rand + dateStart.to_time.to_f)
      a.push({"airlineCompany" => tempCompany, "flightPrice" => tempPrice, "flightDate" => tempDate})
    end
    return a
  end

  def flightCompany
    companies = ["United", "Delta", "American", "Southwest"]
    return companies[rand(0..companies.size-1)]
  end

  def planner
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:integer, :integer, :integer, :float, :float, :float, :string, :string)
    end
end
