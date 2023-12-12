# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do

  resources :guitars
  resources :brands do 
    resources :models
  end
  resources :posts
  devise_for :users
  
  get 'up' => 'rails/health#show', as: :rails_health_check
  root 'home#index'
end
