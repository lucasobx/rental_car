-- SQLite
-- 20 - Construa uma consulta capaz de exibir todas as locações realizadas, assim como também o nome do cliente, do automóvel e do funcionário vinculados em cada locação

SELECT l.id AS 'Locação',
       l.start_date AS 'Data de início',
       l.end_date AS 'Data de término',
       l.total AS 'Total',
       c.name ||' '|| c.lastname AS 'Cliente',
       cars.name AS 'Carro',
       e.name AS 'Funcionário' FROM locations AS l
  INNER JOIN customers AS c ON (l.customer_id = c.id)
  INNER JOIN cars ON (l.car_id = cars.id)
  INNER JOIN employees AS e ON (l.employee_id = e.id);