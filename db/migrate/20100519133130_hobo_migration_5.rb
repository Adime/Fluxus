class HoboMigration5 < ActiveRecord::Migration
  def self.up
    add_column :libraries, :docs, :string
  end

  def self.down
    remove_column :libraries, :docs
  end
end
