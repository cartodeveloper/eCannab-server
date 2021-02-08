CREATE TABLE users (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  name TEXT NOT NULL,
  email TEXT NOT NULL UNIQUE,
  password TEXT NOT NULL UNIQUE,
  dateCreated TIMESTAMPTZ NOT NULL DEFAULT NOW()
)