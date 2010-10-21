class CreateWatchings < ActiveRecord::Migration
  def self.up
    create_table(:watchings) do |t|
      t.integer :watcher_id, :null => false
      t.integer :watchee_id, :null => false
      t.timestamps!
    end
  end

  def self.down
    drop_table :watchings
  end
end
