-- SQLite
-- 17 - Construa uma consulta capaz de exibir todos os funcionários e seus respectivos cargos

SELECT e.name AS 'Funcionário',
       p.description AS 'Cargo' FROM employees AS e
  INNER JOIN positions AS p ON (e.position_id = p.id);