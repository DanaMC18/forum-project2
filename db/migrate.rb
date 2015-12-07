require_relative "migrations/create_users"
require_relative "migrations/create_topics"
require_relative "migrations/create_comments"
require_relative "migrations/create_likes"
require_relative "migrations/create_votes"

CreateUsers.migrate(ARGV[0])
CreateTopics.migrate(ARGV[0])
CreateComments.migrate(ARGV[0])
CreateLikes.migrate(ARGV[0])
CreateVotes.migrate(ARGV[0])