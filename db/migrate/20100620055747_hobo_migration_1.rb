class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text     :body
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :user_id
      t.integer  :library_id
    end
    add_index :comments, [:user_id]
    add_index :comments, [:library_id]

    create_table :libraries do |t|
      t.string   :name
      t.string   :summary
      t.text     :description
      t.string   :package
      t.string   :repository
      t.string   :sourcepath
      t.string   :license
      t.string   :host
      t.string   :homepage
      t.string   :docs
      t.string   :tags
      t.string   :creator, :class_name => "User"
      t.datetime :created_at
      t.datetime :updated_at
    end
    add_index :libraries, [:name]

    create_table :users do |t|
      t.string   :crypted_password, :limit => 40
      t.string   :salt, :limit => 40
      t.string   :remember_token
      t.datetime :remember_token_expires_at
      t.string   :name
      t.string   :email_address
      t.boolean  :administrator, :default => false
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :state, :default => "active"
      t.datetime :key_timestamp
    end
    add_index :users, [:state]
  end

  def self.down
    drop_table :comments
    drop_table :libraries
    drop_table :users
  end
end
