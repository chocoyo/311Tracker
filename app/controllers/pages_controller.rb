class PagesController < ApplicationController
  def search
    if params[:search].blank?
      redirect_to(root_path, alert: "Empty field!") and return
    else
      @matching_requests = ServiceRequest.where("lower(name) LIKE :search", search: "%#{params[:search].downcase}%")
      @search_results = Call.where(service_request: @matching_requests).page params[:page]
    end
  end
end
