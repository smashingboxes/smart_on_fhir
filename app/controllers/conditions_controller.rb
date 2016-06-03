class ConditionsController < ApplicationController
  def show
    @condition = ResourceQuery.new("Condition").find(params[:id])
  end
end
