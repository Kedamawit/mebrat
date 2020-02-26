Rails.application.routes.draw do
  resources :mebrat_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
 root "mebrat_lists#index"
 
 get "/:page" => "static#show"

 get "/help" => "static#help"


end
