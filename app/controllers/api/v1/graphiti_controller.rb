class Api::V1::GraphitiController < ApplicationController
  skip_before_action :authenticate_rider!

  include Graphiti::Rails::Responders
end
