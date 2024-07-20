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