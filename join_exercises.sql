USE employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees e
        JOIN dept_emp de ON de.emp_no = e.emp_no
        JOIN departments d ON d.dept_no = de.dept_no
        JOIN dept_manager dm on e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY full_name DESC;
