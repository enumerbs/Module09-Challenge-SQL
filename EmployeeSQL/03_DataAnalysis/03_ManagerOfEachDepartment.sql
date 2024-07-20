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


