require_relative "../config"

class CreateTopics < ActiveRecord::Migration

  def up
    create_table :topics do |t|
      t.string(:title)
      t.text(:content)
      t.datetime(:created_at)
      t.integer(:user_id)
    end
  end

  def down
    drop_table :topics
  end

end

CreateTopics.migrate(ARGV[0])