Rails.application.routes.draw do
  resources :products
  resources :brands
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      get '/search', to: 'products#search'
    end
  end
end
