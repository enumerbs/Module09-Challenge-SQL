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

