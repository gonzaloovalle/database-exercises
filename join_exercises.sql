USE jupiter_db;

INSERT INTO users (name, email, role_id)
VALUES
('jack', 'jack@example.com', 2),
('john', 'john@example.com', 2),
('cathy', 'cathy@example.com', 2),
('jen', 'jen@example.com', null);


SELECT r.name, COUNT(*) as Users
FROM users as u
         JOIN roles as r
              ON u.role_id = r.id
GROUP BY r.id;

USE employees;
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS m
              ON m.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = m.dept_no
WHERE m.to_date > NOW()
ORDER BY d.dept_name;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees AS e
         JOIN dept_manager AS m
              ON m.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = m.dept_no
WHERE m.to_date > NOW()
  AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT t.title AS "Title", COUNT(*) AS "Count"
FROM departments AS d
         JOIN dept_emp AS de
              ON de.dept_no = d.dept_no
         JOIN titles AS t
              ON t.emp_no = de.emp_no
WHERE de.to_date > NOW()
  AND t.to_date > NOW()
  AND d.dept_name = 'Customer Service'
GROUP BY t.title;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Manager', s.salary
FROM salaries AS s
         JOIN dept_manager AS m
              ON m.emp_no = s.emp_no
         JOIN employees AS e
              ON e.emp_no = m.emp_no
         JOIN departments AS d
              ON d.dept_no = m.dept_no
WHERE m.to_date > NOW()
  AND s.to_date > NOW()
ORDER BY d.dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(managers.first_name, ' ', managers.last_name) AS 'Manager Name'
FROM employees AS e
         JOIN dept_emp AS de
              ON de.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
         JOIN dept_manager AS m
              ON m.dept_no = d.dept_no
         JOIN employees AS managers
              ON m.emp_no = managers.emp_no
WHERE de.to_date > NOW()
  AND m.to_date > NOW();