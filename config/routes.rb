Rails.application.routes.draw do
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#logout', as: 'logout'
  post '/logout', to: 'sessions#destroy'

  get '/information', to: 'sessions#info'

  get '/info', to: 'application#info'

  root 'application#hello'
end
