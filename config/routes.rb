Carriermgmt::Application.routes.draw do
  resources :carriers
  resources :locations
  
  get "welcome/index"
  root "welcome#index"

end
