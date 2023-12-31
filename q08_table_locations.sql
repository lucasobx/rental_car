-- SQLite
-- 8 - Construa uma query SQL para criar a tabela LOCATIONS (Locações) 

CREATE TABLE locations (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  start_date DATETIME NOT NULL,
  end_date DATETIME NOT NULL,
  total FLOAT(10,2) NOT NULL,
  customer_id INTEGER NOT NULL,
  car_id INTEGER NOT NULL,
  employee_id INTEGER NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers (id),
  FOREIGN KEY (car_id) REFERENCES cars (id),
  FOREIGN KEY (employee_id) REFERENCES employees (id)
);

INSERT INTO locations (start_date, end_date, total, customer_id, car_id, employee_id)
  VALUES ('2021-04-01', '2021-04-07', 1500, 1, 1, 2),
         ('2022-05-20', '2022-05-30', 1800, 2, 1, 5),
         ('2021-03-10', '2021-03-21', 2500, 5, 6, 5),
         ('2018-02-20', '2018-03-05', 1250, 6, 4, 6),
         ('2022-11-20', '2022-11-29', 900, 1, 3, 2),
         ('2019-10-01', '2019-10-29', 2800, 3, 1, 6);