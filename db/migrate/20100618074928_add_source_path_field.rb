class AddSourcePathField < ActiveRecord::Migration
  def self.up
    add_column :libraries, :sourcepath, :string
  end

  def self.down
    remove_column :libraries, :sourcepath
  end
end
