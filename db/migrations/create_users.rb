require_relative "../config"

class CreateUsers < ActiveRecord::Migration

  def up
    create_table :users do |t|
      t.string(:name)
      t.string(:username)
      t.string(:password_digest)
      t.text(:profile_pic)
    end
  end

  def down
    drop_table :users
  end

end

CreateUsers.migrate(ARGV[0])