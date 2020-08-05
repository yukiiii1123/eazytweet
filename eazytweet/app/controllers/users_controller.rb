class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @tweets = user.tweets.page(params[:page]).per(5).order("created_at DESC")
  end
end
#発展学習2問題8に解説あり
#@nickname: 現在ログインしているユーザーのレコードのインスタンスが代入されているcurrent_userを利用し、
#そのnicknameカラムの値を取得すれば良いでしょう
#@tweetsですが、こちらはwhereメソッドを利用します。
#whereメソッドの引数を(カラム名: そのカラムの値)とすることでその条件に当てはまるレコードを全て取得することができる。