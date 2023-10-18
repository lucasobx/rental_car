-- SQLite
-- 4 - Construa uma query SQL para criar a tabela CAR_BRANDS (marcas)

CREATE TABLE car_brands (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  brand_name VARCHAR(32) NOT NULL
);

INSERT INTO car_brands (brand_name)
  VALUES ('Chevrolet'),
         ('Toyota'),
         ('Hyundai'),
         ('Volkswagen'),
         ('Jeep'),
         ('Renault'),
         ('Honda'),
         ('Fiat');