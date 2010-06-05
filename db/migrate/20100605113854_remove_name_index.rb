class RemoveNameIndex < ActiveRecord::Migration
  def self.up
    remove_index :libraries, :name => :index_libraries_on_name rescue ActiveRecord::StatementInvalid
  end

  def self.down
    add_index :libraries, [:name]
  end
end
