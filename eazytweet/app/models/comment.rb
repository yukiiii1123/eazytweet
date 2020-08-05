class Comment < ApplicationRecord
  belongs_to :tweet               #tweetsテーブルとのアソシエーション
  belongs_to :user                #usersテーブルとのアソシエーション
  resources :tweets               #tweets_controllerに対してのresourcesメソッド
  resources :users , only: [:show]#users_controllerに対してのresourcesメソッド
end
