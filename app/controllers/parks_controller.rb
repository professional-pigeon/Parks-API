class ParksController < ApplicationController
  def index
    @parks = {"quotation": "The secret of getting ahead is getting started."}
    json_response(@quotes)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end