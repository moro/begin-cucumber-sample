# coding:utf-8
前提 /^言語は"([^"]*)"$/ do |lang|
  header('ACCEPT_LANGUAGE', lang)
end
