DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS topics;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS votes;

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name VARCHAR,
  username VARCHAR,
  profile_pic TEXT
);

CREATE TABLE topics (
  id INTEGER PRIMARY KEY,
  title TEXT,
  content TEXT,
  date DATE,
  votes INTEGER,
  comments INTEGER,
  user_id INTEGER REFERENCES users(id)
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY,
  content TEXT,
  dateYes DATE,
  likes INTEGER,
  user_id INTEGER REFERENCES users(id),
  topic_id INTEGER REFERENCES topic(id)
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  comment_id INTEGER REFERENCES comments(id)
);

CREATE TABLE votes (
  id INTEGER PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  topic_id INTEGER REFERENCES topics(id)
);