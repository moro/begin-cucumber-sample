class Message < ActiveRecord::Base
  named_scope :descend, {:order => "#{table_name}.created_at DESC"}
end
