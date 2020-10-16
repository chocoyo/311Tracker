class NeighbourhoodController < ApplicationController
  def index
    @neighbourhoods = Neighbourhood.all.page params[:page]
  end

  def show
    @neighbourhood = Neighbourhood.find(params[:id])
  end
end
