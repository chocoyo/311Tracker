Rails.application.routes.draw do
  get "calls/index"
  get "/calls/", to: "calls#index"
end
