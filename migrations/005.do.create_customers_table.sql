CREATE TABLE customers (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  email TEXT NOT NULL,
  password TEXT NOT NULL,
  "site_id" INTEGER REFERENCES "sites"(id)
    ON DELETE CASCADE NOT NULL,
    date_created TIMESTAMPTZ NOT NULL DEFAULT NOW()
)