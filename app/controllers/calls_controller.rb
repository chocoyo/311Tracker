class CallsController < ApplicationController
  def index
    #Figure out what the N+1 stuff is
    @calls = Call.all
  end
end
