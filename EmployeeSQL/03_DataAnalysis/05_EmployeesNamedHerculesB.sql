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