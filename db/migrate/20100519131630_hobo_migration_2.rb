class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :libraries, :licence, :string
    add_column :libraries, :host, :string
    remove_column :libraries, :beta
    remove_column :libraries, :release
    remove_column :libraries, :dev
  end

  def self.down
    remove_column :libraries, :licence
    remove_column :libraries, :host
    add_column :libraries, :beta, :string
    add_column :libraries, :release, :string
    add_column :libraries, :dev, :string
  end
end
