Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  #Project Routes (love you!)
  get "/projects" => "projects#index"
  get "/projects/:id" => "projects#show"
  post "/projects" => "projects#create"
  delete "/projects/:id" => "projects#destroy"
  patch "/projects/:id" => "projects#update"

  #Rewards routes
  get "/rewards"  => "rewards#index"
  get "/rewards/:id" => "rewards#show"
  post "/rewards" =>  "rewards#create"
  patch "/rewards/:id"  => "rewards#update"
  delete "/rewards/:id"  => "rewards#destroy"

  # User Routes
  post "/users" => "users#create"

  # Sessions Routes
  post "/sessions" => "sessions#create"

  
  
end
