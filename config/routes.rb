Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'tweets' => 'tweets#index'
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  #get 'tweets/new' => 'tweets#new'
  #post 'tweets' => 'tweets#create'
  get   'users/:id'   =>  'users#show'
end
