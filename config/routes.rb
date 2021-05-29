Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "spots", to: "spots#index"
  get "spots/new", to: "spots#new"
  post "spots", to: "spots#create"
end
