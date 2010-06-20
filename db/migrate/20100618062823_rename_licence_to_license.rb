class RenameLicenceToLicense < ActiveRecord::Migration
  def self.up
    rename_column :libraries, :licence, :license
  end

  def self.down
    rename_column :libraries, :license, :licence
  end
end
