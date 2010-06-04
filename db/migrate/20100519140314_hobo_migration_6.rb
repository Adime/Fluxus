class HoboMigration6 < ActiveRecord::Migration
  def self.up
    rename_column :libraries, :scm, :package
  end

  def self.down
    rename_column :libraries, :package, :scm
  end
end
