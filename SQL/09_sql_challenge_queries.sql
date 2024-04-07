-- employee number, last name, first name, sex, and salary
SELECT employees.emp_no, employees.last_name, employees.first_name,
	employees.sex, salaries.salary
	FROM employees
JOIN salaries
	ON employees.emp_no = salaries.emp_no;

-- first name, last name, and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date 
	FROM employees
		WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31'
ORDER BY hire_date;

-- managers in each department (dept number, dept name, emp number, last name, first name)
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no,
	employees.last_name, employees.first_name 
	FROM dept_manager
JOIN employees
	ON dept_manager.emp_no = employees.emp_no
JOIN departments
	ON dept_manager.dept_no = departments.dept_no
ORDER BY departments.dept_name;

-- department of each employee (emp number, last name, first name, dept name)
SELECT employees.emp_no, employees.last_name, employees.first_name,
	departments.dept_name
	FROM employees
JOIN dept_emp 
	ON employees.emp_no = dept_emp.emp_no
JOIN departments
	ON departments.dept_no = dept_emp.dept_no
ORDER BY departments.dept_name;

-- first name, last name, and sex for employees named "Hercules B."
SELECT first_name, last_name, sex
	FROM employees 
		WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name;

-- employees in Sales department (emp no, last name, first name, dept name)
SELECT employees.emp_no, employees.last_name, employees.first_name,
	departments.dept_name
	FROM employees
JOIN dept_emp 
	ON employees.emp_no = dept_emp.emp_no
JOIN departments
	ON departments.dept_no = dept_emp.dept_no
		WHERE departments.dept_name = 'Sales';

-- employees in Sales and Development departments (emp no, last name, first name, dept name)
SELECT employees.emp_no, employees.last_name, employees.first_name,
	departments.dept_name
	FROM employees
JOIN dept_emp 
	ON employees.emp_no = dept_emp.emp_no
JOIN departments
	ON departments.dept_no = dept_emp.dept_no
		WHERE departments.dept_name = 'Sales' 
			OR departments.dept_name = 'Development'
ORDER BY departments.dept_name;

-- frequency count of employee last names
SELECT last_name, count(emp_no) as emp_count_same_last_name
	FROM employees
GROUP BY last_name
ORDER BY emp_count_same_last_name;