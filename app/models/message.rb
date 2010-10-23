class Message < ActiveRecord::Base
  belongs_to :user
  named_scope :descend, {:order => "#{table_name}.created_at DESC"}
end
