class ParksController < ApplicationController
  def index
    @parks = Park.all
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @parks = Park.create!(park_params)
    json_response(@parks)
  end

  def update
    @park = Park.find(params[:id])
    @park.update(park_params)
  end

  def destroy
    @park = Park.find(params[:id])
    @park.destroy
  end

  private
  def park_params
    params.permit(:park_name, :park_type, :state, :city, :description)
  end

end