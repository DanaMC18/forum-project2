require_relative "../config"

class CreateVotes < ActiveRecord::Migrations
  def up
    create_table :votes do |t|
      t.integer(:user_id)
      t.integer(:topic_id)
    end
  end

  def down
    drop_table :votes
  end
end

CreateVotes.migrate(ARGV[0])