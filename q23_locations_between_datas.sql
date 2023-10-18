-- SQLite
-- 23 - Construa uma consulta capaz de exibir todas as locações realizadas, entre as datas “2022-05-20” a “2022-12-25”

SELECT l.id AS 'Locação',
       l.start_date AS 'Data de início',
       l.end_date AS 'Data de término',
       l.total AS 'Total',
       c.name ||' '|| c.lastname AS 'Cliente',
       cars.name AS 'Carro',
       e.name AS 'Funcionário' FROM locations AS l
  INNER JOIN customers AS c ON (l.customer_id = c.id)
  INNER JOIN cars ON (l.car_id = cars.id)
  INNER JOIN employees AS e ON (l.employee_id = e.id)
  WHERE l.start_date BETWEEN '2022-05-20' AND '2022-12-25';