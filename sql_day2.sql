

SELECT * FROM employees;
SELECT * FROM department;

SELECT employees.name, employees.salary, employees.department, department.manager, department.budget
FROM employees 
INNER JOIN department ON employees.department = department.department_name;

INSERT INTO employees (name, department, city, salary, experience) 
VALUES ('Test', 'unknown', 'Karachi', 1000, 1);

SELECT employees.name, employees.salary, employees.department, department.manager, department.budget
FROM employees 
LEFT JOIN department ON employees.department = department.department_name;

DELETE FROM employees WHERE name = 'Test';

SELECT employees.name, employees.salary, employees.department, department.manager, department.budget
FROM employees 
LEFT JOIN department ON employees.department = department.department_name;



--"Find the average salary per department along
--with the manager name and budget, 
--but only show departments where average salary
-- is above 4000, sorted by average salary highest first"

SELECT department.manager, department.budget, employees.department, AVG(employees.salary)
FROM employees 
INNER JOIN department ON employees.department = department.department_name
GROUP BY department.manager, department.budget, employees.department
HAVING AVG(employees.salary) > 4000
ORDER BY AVG(employees.salary) DESC



