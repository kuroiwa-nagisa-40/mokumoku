# README

## 環境構築
```
$ bundle install --without=production
$ bin/rails db:setup
$ yarn install
$ bin/webpack
$ bin/rails s
```

## 事業をエンジニアリングしよう提案編の回答は以下に記述してください
* 選択した事業側の課題
  サービス登録者数の内、男性60%に対して、女性は40%。一方で、サービス内のもくもく会に参加した人の比率は、男性90%：女性10%と大きな差が出ています。もっと女性が使いやすいようなサービス設計にする必要があるのではないか？

* 提案内容
  * エンジニアの男女比を見ても、未だ女性の方が少ない傾向にある。そのため、女性同士で繋がれることがアピールできれば、女性の登録ならびに参加の比率も現状より挙げられると思われる。
  * 女性同士のもくもく会が開催できるようにし、最初の参加へのハードルを低くすることができるのではないか。
  * また、ユーザプロフィールに自己紹介や性別を記載できるようにし、もくもく回主催のユーザ、参加予定ユーザのプロフィールや自己紹介を確認できてから参加予約できる動線を作ることで、「どんな人がいるか分からないから怖い」という意識を薄れされる。

* 実装方針
  * ユーザ登録の際に「年代」、「性別」、「エンジニア歴」、「自己紹介文」を登録可能とする(任意項目)
    * 性別、エンジニア歴項目は幅を持たせた形で登録可能とする(ex: 10~20代、20~30代 / 0~2年、2~3年など )
  * もくもく会作成の際に、「女性のみ」のチェックボックスを設け、該当のもくもく会には女性ユーザのみ参加可能とする
  * もくもく会検索のフォームに女性のみチェックボックスを指定可能とする。チェックボックスが適用されている場合、女性のみ参加OKのもくもく会のみ表示される
  * また、女性のみ参加のもくもく会は一覧画面に「女性のみ！」等のラベルを付与する
  * 主催者や参加者のユーザアイコンをクリックすることで、該当ユーザのプロフィールに遷移し、自己紹介文等を確認できるようにする
