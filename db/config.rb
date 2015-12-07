require "active_record"

ActiveRecord::Base.logger = Logger.new(STDERR)

if ENV["RACK_ENV"] == "production"
  require "uri"
  db = URI.parse(ENV["DATABASE_URL"])
  db_config = {
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  }
else 
  db_config = {
    :adapter => "sqlite3",
    :database => "db/forum.sqlite3"
  }
end 

ActiveRecord::Base.establish_connection(db_config)

Dir.glob("models/*.rb").each do |path|
  require_relative "../#{path}"
end 