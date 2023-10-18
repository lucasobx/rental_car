-- SQLite
-- 7 - Construa uma query SQL para criar a tabela CARS (Carros)

CREATE TABLE cars (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(120) NOT NULL,
  year INTEGER NOT NULL,
  color VARCHAR(32) NOT NULL,
  km FLOAT(10,2) NOT NULL,
  status VARCHAR(17) NOT NULL,
  brand_id INTEGER NOT NULL,
  model_id INTEGER NOT NULL,
  FOREIGN KEY (brand_id) REFERENCES car_brands (id),
  FOREIGN KEY (model_id) REFERENCES car_models (id)
);

INSERT INTO cars (name, year, color, km, status, brand_id, model_id)
  VALUES ('Chevrolet Onix LT', 2016, 'Preto', 8000, 'Liberado', 1, 3),
         ('Hyundai HB20 1.6', 2022, 'Prata', 3000, 'Em manutenção', 3, 3),
         ('Toyota Yaris', 2021, 'Branca', 10000, 'Liberado', 2, 3),
         ('Fiat Cronos', 2022, 'Preto', 2500, 'Liberado', 8, 2),
         ('Honda HR-V', 2018, 'Prata', 40000, 'Em manutenção', 7, 6),
         ('VW Amarok', 2019, 'Prata', 25000, 'Liberado', 4, 6);