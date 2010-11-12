class Message < ActiveRecord::Base
  belongs_to :user
  scope :descend, {:order => "#{table_name}.created_at DESC"}

  scope :watched_by, lambda { |watcher|
    watchees = watcher.watchings.map(&:watchee_id)
    {:conditions => ["#{table_name}.user_id IN (?)", watchees << watcher.id]}
  }
end
