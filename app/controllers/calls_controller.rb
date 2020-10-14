class CallsController < ApplicationController
  def index
    # Figure out what the N+1 stuff is
    @calls = Call.all
  end

  def show
    @call = Call.find(params[:id])
  end
end
