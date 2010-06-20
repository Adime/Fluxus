class AddCommentsModel < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string   :name
      t.string   :email
      t.string   :url
      t.text     :body
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :library_id
    end
    add_index :comments, [:library_id]
  end

  def self.down
    drop_table :comments
  end
end
