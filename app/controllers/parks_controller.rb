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
    if @park.update(park_params)
      render status: 200, json: {
        message: "This quote has been updated successfully"
        }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    if @park.destroy
      render status: 200, json: {
        message: "This quote has been destroyed successfully"
        }
    end
  end

  private
  def park_params
    params.permit(:park_name, :park_type, :state, :city, :description)
  end

end