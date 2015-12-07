require_relative "../config"

class CreateLikes < ActiveRecord::Migration

  def up
    create_table :likes do |t|
      t.integer(:user_id)
      t.integer(:comment_id)
    end
  end

  def down
    drop_table :likes
  end

end

CreateLikes.migrate(ARGV[0])