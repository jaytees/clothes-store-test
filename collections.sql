DROP TABLE IF EXISTS collections;

CREATE TABLE collections (
  collection_id INTEGER PRIMARY KEY AUTOINCREMENT,
  collection_name TEXT,
  collection_year INTEGER,
  collection_image TEXT
);

INSERT INTO collections (collection_name, collection_year, collection_image)
  VALUES (
    'The Drop',
    2020,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSLnuXrp0Hiu4ntdaRSgJ7gHy08qMEXl5d91wDc8b3c0qXJ704x'
  );

INSERT INTO collections (collection_name, collection_year, collection_image)
  VALUES (
    'Sophmore',
    2021,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQNKxBqEe6zwEGWLxe5yMV1FV4AbwvdhMlkKqrNEhfH7vRtKGgq'
  );

INSERT INTO collections (collection_name, collection_year, collection_image)
  VALUES (
    'Classics',
    2022,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQBuaoRZAMHNhXSnLBehKuuuFn689I2lhyjBL_DESqlUhcFB2UU'
  );
