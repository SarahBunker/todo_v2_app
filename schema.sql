-- psql -d expenses < schema.sql
-- \i ~/Documents/LS/RB185/demo_project/schema.sql

DROP TABLE IF EXISTS lists;
DROP TABLE IF EXISTS todos;

CREATE TABLE lists (
  id serial PRIMARY KEY,
  name text UNIQUE NOT NULL
);

CREATE TABLE  todos (
  id serial PRIMARY KEY,
  name text NOT NULL,
  completed boolean DEFAULT false,
  list_id integer NOT NULL REFERENCES lists(id) ON DELETE CASCADE
);
