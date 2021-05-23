SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e 
LEFT JOIN salaries AS s
ON (e.emp_no = s.emp_no);

SELECT first_name, last_name, hire_date
FROM employees 
WHERE hire_date between '1986-01-01' and '1986-12-31';

SELECT e.emp_no, e.first_name, e.last_name, de.dept_name
FROM employees AS e
INNER JOIN dept_manager as de
ON (e.emp_no = de.emp_no);

SELECT e.emp_no, e.first_name, e.last_name, d.dept_no, d.dept_name
FROM departments as d
JOIN dept_emp as de
ON (d.dept_no = de.dept_no)
JOIN employees e 
ON (e.emp_no = de.emp_no);


SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%';

SELECT e.emp_no, e.first_name, e.last_name, d.dept_no
FROM employees as e
JOIN dept_emp as d
ON (e.emp_no = d.emp_no)
JOIN departments de
ON (de.dept_no = d.emp_no)
WHERE d.dept_no = 'Sales';


SELECT e.emp_no, e.last_name, e.first_name, d.dept_no 
FROM employees AS e
JOIN dept_emp as d
ON 
WHERE d.dept_no = 'd007' or d.dept_no = 'd005';

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name 
ORDER BY
COUNT(last_name) DESC;