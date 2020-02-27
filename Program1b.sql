SELECT first_name, last_name, salary
FROM employees NATURAL JOIN salaries
WHERE salary>90000 AND to_date='9999-01-01';


SELECT first_name, last_name, dept_name
FROM employees NATURAL JOIN current_dept_emp NATURAL JOIN departments
WHERE (dept_no = 'd008' OR dept_no = 'd009') AND to_date = '9999-01-01';


SELECT first_name, last_name, title
FROM employees NATURAL JOIN titles
WHERE gender = 'F' AND title = 'Technique Leader' AND to_date = '9999-01-01';


SELECT first_name, last_name, salary
FROM employees NATURAL JOIN salaries JOIN titles USING (emp_no, to_date)
WHERE to_date = '9999-01-01' AND title != 'Senior Engineer' ORDER BY salary;


SELECT first_name, last_name, birth_date
FROM employees
ORDER BY birth_date DESC;


SELECT first_name, last_name
FROM employees NATURAL JOIN dept_manager
WHERE to_date = '9999-01-01';


SELECT first_name, last_name, dept_no
FROM employees NATURAL JOIN salaries JOIN current_dept_emp USING (emp_no)
WHERE salary = (SELECT MAX(salary) FROM salaries);
