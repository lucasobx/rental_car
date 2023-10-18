-- SQLite
-- 22 - Construa uma consulta capaz de exibir qual foi a locação com o TOTAL com maior valor.

SELECT l.id AS 'Locação',
       l.start_date AS 'Data de início',
       l.end_date AS 'Data de término',
       MAX(l.total) AS 'Total',
       c.name ||' '|| c.lastname AS 'Cliente',
       cars.name AS 'Carro',
       e.name AS 'Funcionário' FROM locations AS l
  INNER JOIN customers AS c ON (l.customer_id = c.id)
  INNER JOIN cars ON (l.car_id = cars.id)
  INNER JOIN employees AS e ON (l.employee_id = e.id);