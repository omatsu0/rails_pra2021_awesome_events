# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/:provider/callback' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

  resources :retirements

  resources :events do
    resources :tickets
  end
  match "*path" => "application#error404", via: :all
  get 'status' => 'status#index', defaults: { format: 'json' }
end
