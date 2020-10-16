class ServiceRequestsController < ApplicationController
  def index
    @service_requests = ServiceRequest.all
  end

  def show
    @service_request = ServiceRequest.find(params[:id])
  end
end
