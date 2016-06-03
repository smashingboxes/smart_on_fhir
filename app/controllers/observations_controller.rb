class ObservationsController < ApplicationController
  def show
    @observation = ResourceQuery.new("Observation").find(params[:id])
  end
end
