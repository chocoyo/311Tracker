class WardsController < ApplicationController
  def index
    @wards = Ward.all
  end

  def show
    @ward = Ward.find(params[:id])
    @neighbourhoods = Neighbourhood.where(ward: @ward)
  end
end
