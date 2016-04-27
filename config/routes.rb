Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users

  resources :posts do
    member do
      put 'like',    to: 'posts#upvote'
      put 'dislike', to: 'posts#downvote'
    end
  end
  # get 'posts' => 'posts#index', as: :posts
  # get 'posts/new' => 'post#new', as: :new_post
  # get 'posts/:id' => 'posts#show', as: :post
  # get 'posts/:id/edit' => 'posts#edit', as: :edit_post
  # post 'posts' => 'posts#create'
  # patch 'posts/:id' => 'posts#update'
  # put 'posts/:id' => 'posts#update'
  # delete 'posts/:id' => 'posts#delete'

end
