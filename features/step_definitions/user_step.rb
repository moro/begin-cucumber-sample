
前提 /^ログイン名が"([^"]*)"、メアドが"([^"]*)"のユーザがいる$/ do |login, email|
  User.create!(:login => login, :email => email)
end
