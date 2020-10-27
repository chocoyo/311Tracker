class PagesController < ApplicationController
  def search
    if params[:search].blank?

    elsif params[:category].blank? # Need to change this thing, rn its searcjes request on Calls
      @matching_requests = ServiceRequest.where("lower(name) LIKE :search", search: "%#{params[:search].downcase}%")
      @search_results = Call.where(service_request: @matching_requests).page params[:page]
    elsif params[:category] == "service_area"
      @matching_areas = ServiceArea.where("lower(name) LIKE :search", search: "%#{params[:search].downcase}%")
      @search_results = Call.where(service_area: @matching_areas).page params[:page]
    elsif params[:category] == "service_request"
      @matching_areas = ServiceArea.where("lower(name) LIKE :search", search: "%#{params[:search].downcase}%")
      @search_results = Call.where(service_area: @matching_areas).page params[:page]
    elsif params[:category] == "ward"
      @matching_wards = Ward.where("lower(name) LIKE :search", search: "%#{params[:search].downcase}%")
      @search_results = Call.where(ward: @matching_wards).page params[:page]
    elsif params[:category] == "neighbourhood"
      @matching_neighbourhoods = Neighbourhood.where("lower(name) LIKE :search", search: "%#{params[:search].downcase}%")
      @search_results = Call.where(neighbourhood: @matching_neighbourhoods).page params[:page]
    end
  end

  def about; end
end
