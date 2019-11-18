# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :static_pages do
    get 'home'
  end
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/help', to: 'static_pages#help', as: 'helf'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  resources :users
end
