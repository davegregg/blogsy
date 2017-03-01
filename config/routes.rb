Rails.application.routes.draw do

  root                          'posts#index'
  get  '/posts'              => 'posts#index'
  get  '/users'              => 'users#index'
  post '/users'              => 'users#create'
  get  '/posts/:id'          => 'posts#show'
  get  '/posts/:id/comments' => 'posts#index_comments'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
