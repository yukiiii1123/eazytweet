class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments  #commentsテーブルとアソシエーション
end
