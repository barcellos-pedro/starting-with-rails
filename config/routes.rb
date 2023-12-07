# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root "articles#index"

  # Maps the necessary routes related to the Article resource
  # It also creates helper methods to get uri/path of the resource objects
  # Use $ bin/rails routes to check the app routes
  resources :articles do
    resources :comments
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
