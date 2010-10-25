
前提 /^ログイン名が"([^"]*)"、Eメールアドレスが"([^"]*)"のユーザがいる$/ do |login, email|
  User.create!(:login => login, :email => email)
end

前提 /^以下のユーザがいる:$/ do |table|
  table.raw.each do |username|
    When %Q[ログイン名が"#{username}"、Eメールアドレスが"#{username}@example.com"のユーザがいる]
  end
end

前提 /^"([^"]*)"としてログインしている$/ do |username|
  Given %Q["ログイン"ページを表示している]
  When  %Q["ログイン名"に"#{username}"と入力する]
  Then  %Q["Eメール"に"#{username}@example.com"と入力する]
  Then  %Q["ログイン"ボタンをクリックする]
end

前提 /^"([^"]*)"が"([^"]*)"をウォッチしている$/ do |watcher, watchee|
  watcher = User.find_by_login(watcher)
  watchee = User.find_by_login(watchee)
  raise ActiveRecord::RecordNotFound unless (watcher && watchee)

  watcher.watchings.create!(:watchee => watchee)
end

