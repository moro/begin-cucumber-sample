class AddUserIdToMessages < ActiveRecord::Migration
  def self.up
    add_column :messages, :user_id, :integer, :null => false, :default => 0
  end

  def self.down
    remove_column :messages, :user_id
  end
end
