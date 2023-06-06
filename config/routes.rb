Rails.application.routes.draw do
  get 'users/show'
  get 'trips/show'
  get 'trips/new'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :trips
end
