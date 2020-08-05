Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end

#理解できなければ1.5章を確認する