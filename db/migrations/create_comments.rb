require_relative "../config"

class CreateComments < ActiveRecord::Migration

  def up
    create_table :comments do |t|
      t.text(:content)
      t.datetime(:created_at)
      t.integer(:user_id)
      t.integer(:topic_id)
    end
  end

  def down
    drop_table :comments
  end

end

CreateComments.migrate(ARGV[0])