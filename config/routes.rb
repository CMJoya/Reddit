Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users

  resources :posts do
    member do
      put 'like',    to: 'posts#upvote'
      put 'dislike', to: 'posts#downvote'
    end
    resources :comments
  end
  # get 'posts' => 'posts#index', as: :posts
  # get 'posts/new' => 'post#new', as: :new_post
  # get 'posts/:id' => 'posts#show', as: :post
  # get 'posts/:id/edit' => 'posts#edit', as: :edit_post
  # post 'posts' => 'posts#create'
  # patch 'posts/:id' => 'posts#update'
  # put 'posts/:id' => 'posts#update'
  # delete 'posts/:id' => 'posts#delete'

  # get 'comments' => 'comments#index', as: :comments
  # get 'comments/new' => 'comments#new', as: :new_comment
  # get 'comments/:id' => 'comments#show', as: :comment
  # get 'comments/:id/edit' => 'comments#edit', as: :edit_comment
  # post 'comments' => 'comments#create'
  # patch 'comments/:id' => 'comments#update'
  # put 'comments/:id' => 'comments#update'
  # delete 'comments/:id' => 'comments#delete'
end
