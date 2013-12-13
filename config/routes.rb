Carriermgmt::Application.routes.draw do
  resources :carriers do
  	resources :rates
  end
  
  resources :locations do
  	resources :origin_destination_pairs
  end
  
  resources :origin_destination_pairs do
  	resources :locations
  end

  resources :rates do 
    resources :carriers
  end
    
  get "welcome/index"
  root "welcome#index"

end
