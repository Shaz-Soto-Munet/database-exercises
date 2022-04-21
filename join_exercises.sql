USE employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees e
        JOIN dept_emp de ON de.emp_no = e.emp_no
        JOIN departments d ON d.dept_no = de.dept_no
        JOIN dept_manager dm on e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY full_name DESC;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees e
        JOIN dept_emp de ON de.emp_no = e.emp_no
        JOIN departments d ON d.dept_no = de.dept_no
        JOIN dept_manager dm ON e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY full_name DESC;

SELECT t.title AS title, COUNT(*) AS Total
FROM titles t
    JOIN dept_emp de on t.emp_no = de.emp_no
    JOIN departments d on de.dept_no = d.dept_no
WHERE d.dept_no = 'd009'
  AND de.to_date = '9999-01-01'
  AND t.to_date = '9999-01-01'
GROUP BY t.title;


SELECT d.dept_name,
       CONCAT(e.first_name, ' ', e.last_name) AS full_name,
       s.salary AS Salary
FROM employees e
        JOIN dept_emp de ON de.emp_no = e.emp_no
        JOIN departments d ON d.dept_no = de.dept_no
        JOIN dept_manager dm on e.emp_no = dm.emp_no
        JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY full_name DESC;






