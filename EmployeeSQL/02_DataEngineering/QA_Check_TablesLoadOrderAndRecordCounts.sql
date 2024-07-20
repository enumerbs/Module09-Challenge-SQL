/* Tables load order, using pgAdmin Import/Export tool:

Titles
Departments
Employees 	(use script 'ImportData_Employees.sql' in conjunction with Import/Export tool)
Salaries
dept_emp
dept_manager

*/

select * from Titles limit 10;
select * from Departments limit 10;
select * from Employees limit 10;
select * from Salaries limit 10;
select * from dept_emp limit 10;
select * from dept_manager limit 10;

select COUNT(*) from Titles;			--       7
select COUNT(*) from Departments;		--       9

select COUNT(*) from Employees;		    -- 300,024
select COUNT(*) from Salaries;			-- 300,024

select COUNT(*) from dept_emp;			-- 331,603
select COUNT(*) from dept_manager;		--      24
