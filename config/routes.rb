Rails.application.routes.draw do
  get "calls/index"
  get "/calls/", to: "calls#index"
  get "calls/:id", to: "calls#show", as: "call"

  get "/neighbourhoods/", to: "neighbourhood#index"
  get "neighbourhoods/:id", to: "neighbourhood#show", as: "neighbourhood"
end
