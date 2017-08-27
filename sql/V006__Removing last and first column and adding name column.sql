ALTER TABLE employees
ADD COLUMN name VARCHAR(80) NULL;

UPDATE employees set name = CONCAT(first_name," ",last_name);

ALTER TABLE employees
DROP COLUMN last_name,
DROP COLUMN first_name;

ALTER VIEW employee_positions AS
SELECT employees.id AS employee_id,
	name,
	title
FROM employees
	LEFT JOIN titles on employees.title_id=titles.id