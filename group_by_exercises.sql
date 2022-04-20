USE employees;

SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
    AND last_name LIKE '%E'
GROUP BY last_name;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
    AND last_name LIKE '%E'
GROUP BY first_name, last_name;

SELECT last_name
FROM employees
WHERE last_name LIKE '%Q%'
    AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%Q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT gender, COUNT(*)
FROM employees
WHERE first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya'
GROUP BY gender;

SELECT COUNT(*), gender FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

SELECT COUNT(*), gender FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;