USE employees;

SELECT employees.last_name AS name, salaries.salary AS salary FROM employees NATURAL JOIN salaries;

SELECT salary
FROM salaries s
JOIN dept_emp de
ON s.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
JOIN employees e ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Research';


SELECT CONCAT(first_name, ' ', last_name), COUNT(*)
FROM salaries s
         JOIN dept_emp de ON s.emp_no = de.emp_no
         JOIN departments d ON de.dept_no = d.dept_no
         JOIN employees e ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Research'
GROUP BY CONCAT(first_name, ' ', last_name);

SELECT CONCAT(first_name, ' ', last_name), salary
FROM salaries s
         JOIN dept_emp de ON s.emp_no = de.emp_no
         JOIN departments d ON de.dept_no = d.dept_no
         JOIN employees e ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Research'
AND s.to_date = '9999-01-01'
ORDER BY salary DESC;



