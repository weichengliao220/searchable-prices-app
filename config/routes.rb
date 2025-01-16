Rails.application.routes.draw do
  get 'prices/index'
  get 'admin/import'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "prices#index"
  resources :prices, only: [:index]

  namespace :admin do
    get 'import', to: 'admin#import'
    post 'import', to: 'admin#import'
  end
end
