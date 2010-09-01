
前提 /^以下のユーザごとのメッセージがある:$/ do |table|
  table.rows.each do |login, message_text, created_at|
    u = User.find_by_login(login)
    raise ActiveRecord::RecordNotFound unless u
    u.messages.create!(:text => message_text, :created_at => created_at)
  end
end

