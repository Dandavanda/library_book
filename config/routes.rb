Rails.application.routes.draw do
  resources :fines
  resources :returns
  resources :borrowers
  resources :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
