class LocationsController < ApplicationController
  before_action :set_location, only: %i[show edit update destroy]

  def index
    @q = Location.ransack(params[:q])
    @locations = @q.result(distinct: true).includes(:trips,
                                                    :pickups).page(params[:page]).per(10)
  end

  def show
    @trip = Trip.new
  end

  def new
    @location = Location.new
  end

  def edit; end

  def create
    @location = Location.new(location_params)

    if @location.save
      redirect_to @location, notice: "Location was successfully created."
    else
      render :new
    end
  end

  def update
    if @location.update(location_params)
      redirect_to @location, notice: "Location was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    redirect_to locations_url, notice: "Location was successfully destroyed."
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name_of_location, :address)
  end
end
