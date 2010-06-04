class HoboMigration7 < ActiveRecord::Migration
  def self.up
    add_column :libraries, :tags, :string
  end

  def self.down
    remove_column :libraries, :tags
  end
end
