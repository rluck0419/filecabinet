Rails.application.routes.draw do
  resources :taggings
  resources :tags
  resources :photos
  resources :notes
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
