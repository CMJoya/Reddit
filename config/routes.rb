Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  resources :posts
  # get 'posts' => 'posts#index', as: :posts
  # get 'posts/new' => 'post#new', as: :new_post
  # get 'posts/:id' => 'posts#show', as: :post
  # get 'posts/:id/edit' => 'posts#edit', as: :edit_post
  # post 'posts' => 'posts#create'
  # patch 'posts/:id' => 'posts#update'
  # put 'posts/:id' => 'posts#update'
  # delete 'posts/:id' => 'posts#delete'

end
