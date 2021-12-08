class Api::V1::RidersController < Api::V1::GraphitiController
  def index
    riders = RiderResource.all(params)
    respond_with(riders)
  end

  def show
    rider = RiderResource.find(params)
    respond_with(rider)
  end

  def create
    rider = RiderResource.build(params)

    if rider.save
      render jsonapi: rider, status: :created
    else
      render jsonapi_errors: rider
    end
  end

  def update
    rider = RiderResource.find(params)

    if rider.update_attributes
      render jsonapi: rider
    else
      render jsonapi_errors: rider
    end
  end

  def destroy
    rider = RiderResource.find(params)

    if rider.destroy
      render jsonapi: { meta: {} }, status: :ok
    else
      render jsonapi_errors: rider
    end
  end
end
