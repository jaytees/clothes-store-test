DROP TABLE IF EXISTS products;

CREATE TABLE products (
  product_id INTEGER PRIMARY KEY AUTOINCREMENT,
  type_id INTEGER,
  collection_id INTEGER,
  product_name TEXT,
  description TEXT,
  price MONEY,
  image TEXT
);

INSERT INTO products (type_id, collection_id, product_name, description, price, image)
  VALUES(
    1,
    1,
    'Signature Tee',
    'Original logo tee',
    34.99,
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRKKaUUupwJ_4Lk0-cBhrIcuD6ibJntJg5bc7DNRN31xsKbMe9M'
  );

INSERT INTO products (type_id, collection_id, product_name, description, price, image)
  VALUES(
    2,
    2,
    'Signature Hood',
    'Original logo hood',
    74.99,
    'https://dks.scene7.com/is/image/GolfGalaxy/17CTTMRDPXTNHWHDDAPO_Carbon_Heather?wid=1400&fmt=jpg'
  );

INSERT INTO products (type_id, collection_id, product_name, description, price, image)
  VALUES(
    3,
    1,
    'Signature Hat',
    'Original logo hat',
    39.99,
    'https://dks.scene7.com/is/image/GolfGalaxy/16NEWMMLBDDGRSRYLAPAC?wid=1400&fmt=jpg'
  );
