Rails.application.routes.draw do
  resources :likis
  get 'pages/home'
  get 'pages/about'
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "hello#index"
  get "/contact" ,:to => 'hello#contact'
  get '/adress' ,:to => 'hello#adress'
  # Defines the root path route ("/")
  # root "articles#index"
end
