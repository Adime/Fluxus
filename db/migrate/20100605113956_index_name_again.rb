class IndexNameAgain < ActiveRecord::Migration
  def self.up
    add_index :libraries, [:name]
  end

  def self.down
    remove_index :libraries, :name => :index_libraries_on_name rescue ActiveRecord::StatementInvalid
  end
end
