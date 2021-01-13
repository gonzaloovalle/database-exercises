USE employees;

SELECT *
FROM employees
ORDER BY first_name = 'Irene, Vidya, Maya';


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