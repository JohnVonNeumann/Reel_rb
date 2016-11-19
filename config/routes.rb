Rails.application.routes.draw do

  get 'sessions/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'
  # Unlike the Users resource, which used the special resources method to
  # obtain a full suite of RESTful routes automatically (Listing 7.3),
  # the Sessions resource will use only named routes, handling GET and POST
  # requests with the login route and DELETE request with the logout route.

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  #refer to httpresourceoperationsrequests.md for more guidance on other ops
end
