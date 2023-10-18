-- SQLite
-- 5 - Construa uma query SQL para criar a tabela POSITIONS (Cargos)

CREATE TABLE positions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  description VARCHAR(120) NOT NULL
);

INSERT INTO positions (description)
  VALUES ('Gerente de vendas'),
         ('Gerente de compras'),
         ('Vendedor'),
         ('Mecânico'),
         ('Assistente Administrativo');