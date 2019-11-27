SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries
ON (salaries.emp_no = employees.emp_no);

SELECT *
FROM employees
WHERE hire_date >='01/01/1986'
AND hire_date <= '12/31/1986'
;

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM departments
RIGHT JOIN dept_manager
ON (departments.dept_no = dept_manager.dept_no)
JOIN employees
ON (dept_manager.emp_no = employees.emp_no);

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (dept_emp.dept_no = departments.dept_no);

SELECT employees.last_name, employees.first_name
FROM employees
WHERE employees.last_name LIKE 'B%'
AND employees.first_name = 'Hercules'
;

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (dept_emp.dept_no = departments.dept_no)
WHERE departments.dept_name = 'Sales';

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (dept_emp.dept_no = departments.dept_no)
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';

 SELECT employees.last_name, count(*)
 FROM   employees
 Group By last_name
 Order By last_name DESC;
 

