class Message < ActiveRecord::Base
  belongs_to :user
  named_scope :descend, {:order => "#{table_name}.created_at DESC"}

  named_scope :watched_by, lambda { |watcher|
    watchees = watcher.watchings.map(&:watchee_id)
    {:conditions => ["#{table_name}.user_id IN (?)", watchees << watcher.id] }
  }
end
