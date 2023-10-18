-- SQLite
-- 6 - Construa uma query SQL para criar a tabela EMPLOYEES (Funcionários)

CREATE TABLE employees (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(100) NOT NULL,
  phone VARCHAR(16) NOT NULL,
  contract_date DATETIME NOT NULL,
  position_id INTEGER NOT NULL,
  FOREIGN KEY (position_id) REFERENCES positions (id)
);

INSERT INTO employees (name, phone, contract_date, position_id)
  VALUES ('Adriana Lemes', '(11) 98789-9999', '2021-04-10', 1),
         ('Camila Soares', '(11) 92749-9599', '2008-03-25', 3),
         ('Leonardo Silva', '(11) 91449-9600', '2018-08-26', 5),
         ('Mayara Gomes', '(11) 92649-9601', '2016-07-18', 2),
         ('Matheus Alves', '(11) 92749-9602', '2015-03-04', 5),
         ('Aline santos', '(11) 99789-3135', '2020-05-06', 3);