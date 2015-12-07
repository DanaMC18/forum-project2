require_relative "migrations/create_users"
require_relative "migrations/create_topics"
require_relative "migrations/create_comments"
require_relative "migrations/create_likes"
require_relative "migrations/create_votes"

CreateUser.migrate(ARGV[0])
CreateTopic.migrate(ARGV[0])
CreateComment.migrate(ARGV[0])
CreateLike.migrate(ARGV[0])
CreateVote.migrate(ARGV[0])