class PagesController < ApplicationController
  def search
    if params[:search].present? && params[:category].blank?
      @matching_requests = ServiceRequest.where("lower(name) LIKE :search", search: "%#{params[:search].downcase}%")
      @search_results = Call.where(service_request: @matching_requests).page params[:page]
    elsif params[:category] == "service_area"
      @matching_areas = ServiceArea.where("lower(name) LIKE :search", search: "%#{params[:search].downcase}%")
      @search_results = Call.where(service_area: @matching_areas).page params[:page]
    end
  end
end
