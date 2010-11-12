# coding:utf-8
Transform /(\d+)時間前/ do |h|
  Integer(h).hours.ago.iso8601
end


