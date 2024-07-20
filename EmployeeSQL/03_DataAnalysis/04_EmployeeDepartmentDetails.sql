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