class RidersController < ApplicationController
  before_action :set_rider, only: [:show, :edit, :update, :destroy]

  # GET /riders
  def index
    @riders = Rider.all
  end

  # GET /riders/1
  def show
    @trip = Trip.new
  end

  # GET /riders/new
  def new
    @rider = Rider.new
  end

  # GET /riders/1/edit
  def edit
  end

  # POST /riders
  def create
    @rider = Rider.new(rider_params)

    if @rider.save
      redirect_to @rider, notice: 'Rider was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /riders/1
  def update
    if @rider.update(rider_params)
      redirect_to @rider, notice: 'Rider was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /riders/1
  def destroy
    @rider.destroy
    redirect_to riders_url, notice: 'Rider was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rider
      @rider = Rider.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rider_params
      params.require(:rider).permit(:best_method_of_contact, :name, :username)
    end
end
