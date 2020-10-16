Rails.application.routes.draw do
  get "calls/index"
  get "/calls/", to: "calls#index"
  get "calls/:id", to: "calls#show", as: "call"

  get "/neighbourhoods/", to: "neighbourhood#index"
  get "neighbourhoods/:id", to: "neighbourhood#show", as: "neighbourhood"

  get "/wards/", to: "wards#index"
  get "wards/:id", to: "wards#show", as: "ward"

  get "/service_areas/", to: "service_areas#index"
  get "service_areas/:id", to: "service_areas#show", as: "service_area"
end
