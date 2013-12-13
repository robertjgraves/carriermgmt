Carriermgmt::Application.routes.draw do
  resources :carriers
  
  resources :locations do
  	resources :origin_destination_pairs
  end
  
  resources :origin_destination_pairs do
  	resources :locations
  end
    
  get "welcome/index"
  root "welcome#index"

end
