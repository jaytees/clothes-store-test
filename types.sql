DROP TABLE IF EXISTS types;

CREATE TABLE types (
  type_id INTEGER PRIMARY KEY,
  product_type TEXT
);

INSERT INTO types (type_id, product_type)
  VALUES (
    1,
    'T-Shirt'
  );

INSERT INTO types (type_id, product_type)
  VALUES (
    2,
    'Hoody'
  );

INSERT INTO types (type_id, product_type)
  VALUES (
    3,
    'Hat'
  );
