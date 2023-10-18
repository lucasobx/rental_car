-- SQLite
-- 18 - Construa uma consulta capaz de exibir somente os funcionários que realizaram mais ou igual a 2 locações.

SELECT e.name AS 'Funcionário',
  COUNT(l.id) AS 'Locações' FROM locations AS l
  INNER JOIN employees AS e ON (l.employee_id = e.id)
  GROUP BY e.id HAVING COUNT(l.id) >= 2;