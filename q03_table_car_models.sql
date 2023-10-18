-- SQLite
-- 3 - Construa uma query SQL para criar a tabela CAR_MODELS (modelos)

CREATE TABLE car_models (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  model_name VARCHAR(120) NOT NULL
);

INSERT INTO car_models (model_name)
  VALUES ('Conversível'),
         ('Sedã'),
         ('Hatch'),
         ('Coupé'),
         ('Perua'),
         ('SUV'),
         ('Picape'),
         ('Minivan'),
         ('Utilitário'),
         ('Buggy');