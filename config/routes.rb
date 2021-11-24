Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :users, only: :index
      resources :courses, only: [:index, :show, :create, :destroy]
      resources :reservations, only: [:index, :show, :create, :destroy]
      post 'signup', to: 'users#create'
      post 'login', to: 'sessions#create'
      delete 'logout', to: 'sessions#destroy'
    end 
  end
end
