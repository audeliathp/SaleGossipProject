Rails.application.routes.draw do
  get "index", to: "static_pages#index"
  get "contact", to: "static_pages#contact"
  get "team", to: "static_pages#team"
  get "show_gossip/:id", to: "dynamic_pages#show_gossip", as: "show_gossip"
  get "dynamic_pages/show_gossip"
  get "show_user/:id", to: "dynamic_pages#show_user", as: "show_user"
  get "dynamic_pages/show_user"
  get "welcome/:id", to: "dynamic_pages#welcome", as: "welcome"
  get "dynamic_pages/welcome"

  resources :gossips

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
