-- Data Analysis (2)
-- List the first name, last name, and hire date for the employees who were hired in 1986

SELECT
	first_name,
	last_name,
	hire_date
  FROM Employees as e
 WHERE date_part('year', hire_date) = 1986
;