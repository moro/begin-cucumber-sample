# language: ja

フィーチャ: ウォッチしているユーザのメッセージを一覧できる
  ユーザとして、
  自分がウォッチしているユーザのメッセージをまとめて一覧したい。
  なぜなら、ウォッチ対象が増えた場合に各々のページをみるより効率が良いからだ。

  背景:
    前提   以下のユーザがいる:
         | alice     |
         | bob       |
    かつ   "alice"としてログインしている

  シナリオ: aliceがbobをウォッチできる
    もし   "bobのメッセージ一覧"ページを表示している
    かつ   "ウォッチする"ボタンをクリックする
    ならば "bobのメッセージ一覧"ページを表示していること
    かつ   "ウォッチ中"と表示されていること

  シナリオ: aliceが、ウォッチ中のbobのウォッチを外す
    前提   "alice"が"bob"をウォッチしている
    もし   "bobのメッセージ一覧"ページを表示している
    ならば "ウォッチ中"と表示されていること
    もし   "ウォッチをやめる"ボタンをクリックする
    ならば "ウォッチしていません"と表示されていること

