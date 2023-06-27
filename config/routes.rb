Rails.application.routes.draw do
  resources :recenzes
  root "recenzes#index"
 
end
