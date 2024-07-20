-- Script to import Employees table data from CSV file
-- 
-- Note that dates in the CSV file are in USA data format, so an 
-- intermediate table 'Employees_USA_Dates' is used first as the
-- target for importing the data in text format from the CSV file. 
-- 
-- Then, the data is read from that table and the dates are converted
-- from text and the USA date MM/DD/YYYY format to actual date type values
-- (corresponding to DD/MM/YYYY format used in Australia).
--
-- Once that's done, the intermediate table is dropped from the database
-- as it's no longer required.

DROP TABLE IF EXISTS Employees_USA_Dates;

CREATE TABLE Employees_USA_Dates (
    emp_no int   NOT NULL,
    emp_title_id char(5)   NOT NULL,
    birth_date char(10)   NOT NULL,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    sex char(1)   NOT NULL,
    hire_date char(10)   NOT NULL,
    CONSTRAINT pk_Employees_USA_Dates PRIMARY KEY (
        emp_no
     )
);

-- At this point, use the pgAdmin import/export tool to load data into
-- the Employees_USA_Dates table from the CSV file, setting the Header 
-- option on (to skep the header row).

select *
  from Employees_USA_Dates
 limit 10
;

select count(*) 
  from Employees_USA_Dates
;

insert into Employees
select 
	emp_no, 
	emp_title_id, 
	
	-- Convert birth_date from USA format to date type
	to_date(birth_date, 'MM/DD/YYYY'),

	first_name,
	last_name,
	sex,

	-- Convert hire_date from USA format to date type
	to_date(hire_date, 'MM/DD/YYYY')
	
  from Employees_USA_Dates
;

select *
  from Employees
  limit 10
;

select count(*) 
  from Employees
;

DROP TABLE Employees_USA_Dates;