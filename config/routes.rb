Carriermgmt::Application.routes.draw do
  resources :carriers
  resources :locations
  resources :origin_destination_pairs
    
  get "welcome/index"
  root "welcome#index"

end
