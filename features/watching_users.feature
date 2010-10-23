# language: ja

フィーチャ: ウォッチしているユーザのメッセージを一覧できる
  ユーザとして、
  自分がウォッチしているユーザのメッセージをまとめて一覧したい。
  なぜなら、ウォッチ対象が増えた場合に各々のページをみるより効率が良いからだ。

  背景:
    前提   以下のユーザがいる:
         | bob       |

  @login_as_alice
  シナリオ: aliceがbobをウォッチできる
    もし   "bobのメッセージ一覧"ページを表示している
    かつ   "ウォッチする"ボタンをクリックする
    ならば "bobのメッセージ一覧"ページを表示していること
    かつ   "ウォッチ中"と表示されていること

  @login_as_alice
  シナリオ: aliceが、ウォッチ中のbobのウォッチを外す
    前提   "alice"が"bob"をウォッチしている
    もし   "bobのメッセージ一覧"ページを表示している
    ならば "ウォッチ中"と表示されていること
    もし   "ウォッチをやめる"ボタンをクリックする
    ならば "ウォッチしていません"と表示されていること

  @login_as_alice
  シナリオアウトライン: ホーム画面で、自分とウォッチしているユーザのメッセージを見られる
    前提   以下のユーザがいる:
         | bob       |
         | charls    |
    かつ   以下のユーザごとのメッセージがある:
         | ユーザ | メッセージ                 | 投稿日時            |
         | alice  | 着席しています(大ホール)。 | 2010-08-29T09:30:00 |
         | bob    | ランチどうする。           | 2010-08-29T11:30:00 |
         | charls | もう食べたよ!?             | 2010-08-29T12:30:00 |
    かつ    "<watcher>"が"<watchee>"をウォッチしている
    もし    "<watcher>のメッセージ一覧"ページを表示している
    かつ    "Home"リンクをクリックする
    ならば  以下のメッセージが表示されていること:
         | <1st_user>  | <1st_message> |
         | <2nd_user>  | <2nd_message> |

    例:
      | watcher | watchee | 1st_user | 1st_message      | 2nd_user | 2nd_message  |
      | alice   | bob     | bob      | ランチどうする。 | alice    | 着席しています(大ホール)。 |

