class Watching < ActiveRecord::Base
  belongs_to :watcher, :class_name => 'User'
  belongs_to :watchee, :class_name => 'User'
end
