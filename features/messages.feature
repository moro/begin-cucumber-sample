# language: ja

フィーチャ: 短いメッセージを投稿する
  ユーザとして、
  短いメッセージを投稿したい。
  なぜなら、ちょっとした考えや日々の細々したことを気軽に情報発信したいからだ。

  シナリオ: メッセージを投稿すると、一覧に表示される
    前提    言語は"en-US"
    前提    "新規メッセージ"ページを表示している
    もし    "Text"に"こんにちはCucumber"と入力する
    かつ    "Create"ボタンをクリックする
    ならば  "こんにちはCucumber"と表示されていること

  シナリオ: 日本語のブラウザ設定でアクセスすると、日本語のラベルで投稿できる
    前提    "新規メッセージ"ページを表示している
    もし    "テキスト"に"こんにちはCucumber"と入力する
    かつ    "作成"ボタンをクリックする
    ならば  "こんにちはCucumber"と表示されていること

  シナリオ: ユーザごとメッセージ一覧では、指定したユーザのメッセージが新しい順に表示される
    前提   ログイン名が"alice"、メアドが"alice@example.com"のユーザがいる
    かつ   ログイン名が"bob"、メアドが"bob@example.com"のユーザがいる
    かつ    以下のユーザごとのメッセージがある:
         | ユーザ | メッセージ                 | 投稿日時            | 
         | alice  | つくば向かう。             | 2010-08-29T06:30:00 | 
         | alice  | 着席しています(大ホール)。 | 2010-08-29T09:30:00 | 
         | alice  | 着席しています(ランチ)。   | 2010-08-29T12:30:00 | 
         | bob    | ランチどうする。           | 2010-08-29T11:30:00 | 
    もし    "aliceのメッセージ一覧"ページを表示している
    ならば  以下のメッセージが表示されていること:
         | 着席しています(ランチ)。   |
         | 着席しています(大ホール)。 |
         | つくば向かう。             |

