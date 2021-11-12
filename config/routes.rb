Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :users, only: [:create, :destroy]
      resources :courses, only: [:index, :show, :create, :destroy]
      resources :reservations, only: [:index, :show, :create, :destroy]
    end 
  end
end
