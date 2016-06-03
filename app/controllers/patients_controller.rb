class PatientsController < ApplicationController
  def index
    @patients = ResourceQuery.new("Patient").all
  end

  def create
  end

  def show
    @patient = ResourceQuery.new("Patient").find(params[:id])
    @conditions = ResourceQuery.new("Condition").for_patient(params[:id])
    @observations = ResourceQuery.new("Observation").for_patient(params[:id])
  end

  def create
    @patients = ResourceQuery.new("Patient").search(params[:search_term])
    render :index
  end
end
