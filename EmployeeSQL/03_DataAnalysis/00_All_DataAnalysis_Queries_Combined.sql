-- Data Analysis (1)
-- List the employee number, last name, first name, sex, and salary of each employee

SELECT
	emp_no,
	last_name,
	first_name,
	sex,
	-- We can use a subquery to obtain the employee's salary as the Employees-Salaries relationship is 1:1
	(
		select salary
		  from Salaries as s
	     where s.emp_no = e.emp_no
	)
  FROM Employees as e
;

-- Data Analysis (2)
-- List the first name, last name, and hire date for the employees who were hired in 1986

SELECT
	first_name,
	last_name,
	hire_date
  FROM Employees as e
 WHERE date_part('year', hire_date) = 1986
;

-- Data Analysis (3)
-- List the manager of each department along with their department number, department name, employee number, last name, and
-- first name

SELECT
	d.dept_no,
	d.dept_name,

	e.emp_no,
	e.last_name,
	e.first_name

  FROM Departments as d
 INNER JOIN dept_manager as dm on dm.dept_no = d.dept_no
 INNER JOIN Employees as e on e.emp_no = dm.emp_no
;

-- Data Analysis (4)
-- List the department number for each employee along with that employee’s employee number, last name, first name, and
-- department name

SELECT
	d.dept_no,

	e.emp_no,
	e.last_name,
	e.first_name,

	d.dept_name

  FROM Departments as d
 INNER JOIN dept_emp as de on de.dept_no = d.dept_no
 INNER JOIN Employees as e on e.emp_no = de.emp_no
;

-- Data Analysis (5)
-- List first name, last name, and sex of each employee whose first name is Hercules and
-- whose last name begins with the letter B

SELECT
	   	e.first_name,
		e.last_name,
		e.sex
  FROM Employees as e
 WHERE e.first_name = 'Hercules' and e.last_name like 'B%'
;

-- Data Analysis (6)
-- List each employee in the Sales department, including their employee number, last name, and first name

SELECT
		e.emp_no,
		e.last_name,
		e.first_name

  FROM Employees as e
 INNER JOIN dept_emp as de on de.emp_no = e.emp_no
 INNER JOIN Departments as d on d.dept_no = de.dept_no
 WHERE d.dept_name = 'Sales'
;

-- Data Analysis (7)
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and
-- department name

SELECT
		e.emp_no,
		e.last_name,
		e.first_name,

		d.dept_name

  FROM Employees as e
 INNER JOIN dept_emp as de on de.emp_no = e.emp_no
 INNER JOIN Departments as d on d.dept_no = de.dept_no
 WHERE d.dept_name in ('Sales', 'Development')
;

-- Data Analysis (8)
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each
-- last name)

SELECT
		e.last_name,
		COUNT(e.last_name) as frequency_count
  FROM Employees as e
 GROUP BY e.last_name
 ORDER BY frequency_count DESC,
		e.last_name ASC
;
