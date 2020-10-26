class CallsController < ApplicationController
  def index
    # Figure out what the N+1 stuff is
    # @calls = Call.all
    @calls = Call.all.page params[:page]

    @service_requests = ServiceRequest
  end

  def show
    @call = Call.find(params[:id])
  end
end
