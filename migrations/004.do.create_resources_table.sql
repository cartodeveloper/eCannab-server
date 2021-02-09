CREATE TABLE resources (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  name TEXT NOT NULL,
  link TEXT NOT NULL,
   "user_id" INTEGER REFERENCES "users"(id)
    ON DELETE CASCADE NOT NULL,
  date_created TIMESTAMPTZ NOT NULL DEFAULT NOW()
)