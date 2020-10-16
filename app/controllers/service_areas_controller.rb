class ServiceAreasController < ApplicationController
  def index
    @service_areas = ServiceArea.all
  end

  def show
    @service_area = ServiceArea.find(params[:id])
  end
end
