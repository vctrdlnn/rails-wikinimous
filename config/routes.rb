Rails.application.routes.draw do
  get 'sessions/new'

  #routes to sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  #routes to users
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
end
