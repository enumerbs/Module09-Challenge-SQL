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
