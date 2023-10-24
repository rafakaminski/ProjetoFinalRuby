Rails.application.routes.draw do
  resources :cobrades
  resources :users
  resources :occurrences
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
