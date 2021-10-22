Rails.application.routes.draw do
  root to: 'pages#home'
    namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/welcome', to: 'base#welcome'
      resources :products
    end
  end
  get '/home', to: 'pages#home', defaults: { format: :html }
  resources :pages
end
