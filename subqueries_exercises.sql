USE employees;

# 1
SELECT * FROM employees WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = '101010');

# 2
SELECT title FROM titles WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

# 3
SELECT first_name, last_name FROM employees WHERE emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date = '9999-01-01') AND gender = 'F';







SELECT * FROM employees WHERE gender = 'F';

