# coding:utf-8

前提 /^以下のユーザごとのメッセージがある:$/ do |table|
  table.rows.each do |login, message_text, created_at|
    When %Q["#{login}"が"#{created_at}"に"#{message_text}"と投稿している]
  end
end

前提 /^"([^"]*)"が"([^"]*)"に"([^"]*)"と投稿している$/ do |login, created_at, message_text|
  u = User.find_by_login(login)
  raise ActiveRecord::RecordNotFound unless u
  u.messages.create!(:text => message_text, :created_at => created_at)
end

ならば /^以下のメッセージが表示されていること:$/ do |expected|
  expected.diff!(tableish("table tr.message", "td:first-child, td:nth-child(2)"))
end

