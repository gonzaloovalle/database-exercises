USE employees;

SELECT *
FROM employees
WHERE first_name = 'Irene'
OR first_name = 'Vidya'
OR first_name = 'Maya'
AND gender = 'M';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
OR '%e';

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT *
FROM employees
WHERE MONTH(birth_date) = '12'
AND DAY(birth_date) = '25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';