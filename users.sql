DROP TABLE IF EXISTS users;

CREATE TABLE users (
  user_ID INTEGER PRIMARY KEY AUTOINCREMENT,
  email VARCHAR,
  username VARCHAR,
  password VARCHAR
);


INSERT INTO users (email, username, password)
  VALUES (
    'jordan1trickett@gmail.com',
    'jaytees',
    'chicken1'
  )
