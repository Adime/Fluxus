class AddLibraryNameIndex < ActiveRecord::Migration
  def self.up
    add_column :libraries, :creator, :string, :class_name => "User"

    add_index :libraries, [:name]
  end

  def self.down
    remove_column :libraries, :creator

    remove_index :libraries, :name => :index_libraries_on_name rescue ActiveRecord::StatementInvalid
  end
end
