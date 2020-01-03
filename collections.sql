DROP TABLE IF EXISTS collections;

CREATE TABLE collections (
  collection_id INTEGER PRIMARY KEY AUTOINCREMENT,
  collection_name TEXT,
  collection_year INTEGER
);

INSERT INTO collections (collection_name, collection_year)
  VALUES (
    'The Drop',
    2020
  );

INSERT INTO collections (collection_name, collection_year)
  VALUES (
    'Sophmore',
    2021
  );

INSERT INTO collections (collection_name, collection_year)
  VALUES (
    'Classics',
    2022
  );
