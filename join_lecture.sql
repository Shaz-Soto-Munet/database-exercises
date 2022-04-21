USE employees;

SELECT employees.last_name AS name,
       salaries.salary AS salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT employees.last_name AS name,
       salaries.salary AS salary,
       salaries.from_date AS startDate,
       salaries.to_date AS endDate
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;


SELECT CONCAT(e.last_name, ' ', e.first_name) AS name,
       s.salary AS salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

