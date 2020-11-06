Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :categories, only: [:index, :show]
  resources :articles, only: [:new, :create, :show]
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'
  get '/votearticle/:id', to: 'articles#vote_article', as: :votearticle
  get '/unvotearticle/:id', to: 'articles#unvote_article', as: :unvotearticle
  root 'categories#index'
end
