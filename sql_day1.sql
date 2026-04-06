

SELECT * FROM employees; 
SELECT name, city FROM employees;
SELECT name, department, salary FROM employees;
SELECT * FROM employees WHERE department = 'IT';
SELECT * FROM employees WHERE city = 'Karachi';
SELECT * FROM employees WHERE salary > 5000;
SELECT * FROM employees; 
SELECT * FROM employees WHERE department = 'IT' OR city = 'Karachi';
SELECT * FROM employees ORDER BY salary;
SELECT * FROM employees ORDER BY experience DESC; 
SELECT * FROM employees WHERE department = 'HR' ORDER BY experience DESC;
SELECT * FROM employees WHERE city = 'Lahore' ORDER BY salary DESC LIMIT 4 ;
SELECT COUNT(*), MAX(salary), MIN(salary), AVG(salary) FROM employees;
SELECT AVG(experience), MAX(experience) FROM employees;

SELECT department, AVG(salary) FROM employees GROUP BY department;
SELECT city, COUNT(*) FROM employees GROUP BY city;


SELECT city, AVG(salary) FROM employees GROUP BY city;
SELECT department, MAX(experience) FROM employees GROUP BY department;


SELECT department , AVG(salary)
FROM employees 
GROUP BY department
HAVING AVG(salary) > 5000;

SELECT city, COUNT(*)
FROM employees
GROUP BY city
HAVING COUNT(*)>2;

SELECT department, SUM(salary)
FROM employees
GROUP BY department
ORDER BY SUM(salary) DESC ; 



SELECT city, AVG(salary)
FROM employees
GROUP BY city 
HAVING AVG(salary)>4000;


--how all employees from HR department ordered by salary highest first
SELECT * FROM employees WHERE department = 'HR' ORDER BY salary DESC;

--Show the average salary and total salary for each city
SELECT city, AVG(salary), SUM(salary)
FROM employees 
GROUP BY city;

--Show only departments where maximum experience is more than 4 years
SELECT department, MAX(experience) 
FROM employees 
GROUP BY department
HAVING MAX(experience)>4;

--Show top 3 highest paid employees — only their name and salary
SELECT name, salary 
FROM employees 
ORDER BY salary DESC
LIMIT 3; 

-- Show count of employees in each department where count is more than 1

SELECT department, COUNT(*)
FROM employees 
GROUP BY department
HAVING COUNT(*)>1;




























