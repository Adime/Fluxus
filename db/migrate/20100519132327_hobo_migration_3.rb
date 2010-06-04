class HoboMigration3 < ActiveRecord::Migration
  def self.up
    add_column :libraries, :description, :text
  end

  def self.down
    remove_column :libraries, :description
  end
end
