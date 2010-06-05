class AddSummaryForLibraries < ActiveRecord::Migration
  def self.up
    add_column :libraries, :summary, :string
  end

  def self.down
    remove_column :libraries, :summary
  end
end
