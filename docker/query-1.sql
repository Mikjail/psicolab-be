
CREATE TABLE users (
  id SERIAL PRIMARY KEY, 
  tests_assigned INTEGER[],
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  location VARCHAR(255),
  password text,
  username VARCHAR(255),
  created_at timestamp,
  updated_at timestamp);

CREATE TABLE tests (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(20),
  points_conversion JSON);

CREATE TABLE questions (
  id serial primary key, 
  points integer, 
  description text, 
  correct_answer integer, 
  test_id integer);

CREATE TABLE answers (
  id SERIAL PRIMARY KEY, 
  sequence INTEGER,
  text TEXT,
  question_id INTEGER,
  test_id INTEGER);

CREATE TABLE results (
  id serial primary key, 
  user_id integer, 
  question_id integer, 
  answer_id integer, 
  created_at timestamp default current_timestamp,
  updated_at timestamp);