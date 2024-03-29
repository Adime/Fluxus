class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :libraries do |t|
      t.string   :name
      t.string   :scm
      t.string   :repository
      t.string   :release
      t.string   :beta
      t.string   :dev
      t.datetime :created_at
      t.datetime :updated_at
    end

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
    drop_table :libraries
    drop_table :users
  end
end
