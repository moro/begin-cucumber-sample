# coding:utf-8
前提 /^言語は"([^"]*)"$/ do |lang|
  page.driver.header('ACCEPT_LANGUAGE', lang)
end
