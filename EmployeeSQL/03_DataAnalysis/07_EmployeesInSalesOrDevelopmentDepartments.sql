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