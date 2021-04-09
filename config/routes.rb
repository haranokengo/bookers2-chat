Rails.application.routes.draw do
  root 'homes#top'
  get 'home/about' => 'homes#about'
  get '/search', to: 'searchs#search'
  post 'follow/:id' => 'relationships#follow', as: 'follow'
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  get 'chat/:id' => 'chats#show', as: 'chat'
  devise_for :users
  
  resources :chats, only: [:create]
  
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :follower, on: :member
    get :followed, on: :member
  end


  resources :books do
    resources :book_comments, only: [:create,:destroy]
    resource :favorites, only: [:create,:destroy]
  end
  resources :notifications, only: :index

end