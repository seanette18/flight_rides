class RidersController < ApplicationController
  before_action :set_rider, only: %i[show edit update destroy]

  def index
    @riders = Rider.page(params[:page]).per(10)
  end

  def show
    @trip = Trip.new
  end

  def new
    @rider = Rider.new
  end

  def edit; end

  def create
    @rider = Rider.new(rider_params)

    if @rider.save
      redirect_to @rider, notice: "Rider was successfully created."
    else
      render :new
    end
  end

  def update
    if @rider.update(rider_params)
      redirect_to @rider, notice: "Rider was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @rider.destroy
    redirect_to riders_url, notice: "Rider was successfully destroyed."
  end

  private

  def set_rider
    @rider = Rider.find(params[:id])
  end

  def rider_params
    params.require(:rider).permit(:best_method_of_contact, :name, :username)
  end
end
