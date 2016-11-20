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
  delete '/logout', to: 'sessions#destroy'
  # Unlike the Users resource, which used the special resources method to
  # obtain a full suite of RESTful routes automatically (Listing 7.3),
  # the Sessions resource will use only named routes, handling GET and POST
  # requests with the login route and DELETE request with the logout route.

  # our use of the resources macro route facility pertains to WHAT we are
  # looking to do in our program, for example you can see that underneath
  # this comment block we have resources :users, but above us we have indiv
  # called on pathways for specific actions and their associated controllers
  # this is because in the case of say, /contact, we dont need to be able to
  # perform EVERY restful argument on it, only one or two, however, in the case
  # of :users, and soon to be :listings, we need to be able to perform a range
  # of operations on the actions, not just one or two


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  #refer to httpresourceoperationsrequests.md for more guidance on other ops
end
