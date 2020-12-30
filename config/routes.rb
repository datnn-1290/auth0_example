Rails.application.routes.draw do
  get 'dashboard/show'
  root 'home#show'
  get 'home/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/public', to: 'public#public'
  get '/private', to: 'private#private'
  get 'auth/auth0/callback', to: 'auth0#callback'
  get 'auth/failure', to: 'auth0#failure'
  get 'dashboard', to: 'dashboard#show'
  get 'logout', to: 'logout#logout'
end
