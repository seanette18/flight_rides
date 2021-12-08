class Api::V1::LocationsController < Api::V1::GraphitiController
  def index
    locations = LocationResource.all(params)
    respond_with(locations)
  end

  def show
    location = LocationResource.find(params)
    respond_with(location)
  end

  def create
    location = LocationResource.build(params)

    if location.save
      render jsonapi: location, status: :created
    else
      render jsonapi_errors: location
    end
  end

  def update
    location = LocationResource.find(params)

    if location.update_attributes
      render jsonapi: location
    else
      render jsonapi_errors: location
    end
  end

  def destroy
    location = LocationResource.find(params)

    if location.destroy
      render jsonapi: { meta: {} }, status: :ok
    else
      render jsonapi_errors: location
    end
  end
end
