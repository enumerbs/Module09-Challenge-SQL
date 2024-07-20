# Module09-Challenge-SQL
Data Analytics Boot Camp - Module 09 - SQL \
SQL Challenge

---

# Results

Data Modelling: see the following files under ./EmployeeSQL/01_DataModelling/
- **ERD-QuickDBD-export.svg** (image file of Entity Relationship Diagram) and/or see embedded image below.

Data Engineering: see the following files under ./EmployeeSQL/02_DataEngineering/
- **CreateSchema.sql** (tables & relationships schemata)

Data Analysis: see the following files under ./EmployeeSQL/03_DataAnalysis/
- **00_All_DataAnalysis_Queries_Combined.sql** for all the queries combined into one file, or see the individual files for each query numbered 1-8.

<img src=./EmployeeSQL/01_DataModelling/ERD-QuickDBD-export.png>

# Implementation notes

Data Modelling:
- The Entity Relationship Diagram (see results section above) was developed using 'QuickDBD' ( https://www.quickdatabasediagrams.com/ ) after inspecting the supplied CSV data files.
- Textual description used in QuickDBD to create the ERD is saved in 'ERD-QuickDBD-definition.txt'
- Schema creation script in Postgres syntax for the tables & relationships defined, exported from QuickDBD, is saved in 'QuickDBD-export-schema-creation.sql'.

Data Engineering:
- 'PewlettHackard' database created using pgAdmin4
- Database creation script saved as 'CreateDatabase.sql'
- QuickDBD-generated Postgres tables & relationships script (see previous section) was modified to remove double-quote characters around table and field names, then saved to 'CreateSchema.sql' and run to create the tables and relationships for the database.
- Tables were populated from their respective CSV files, using the Import/Export tool in pgAdmin.
    - In the case of the Employees data, an intermediate table was used temporarily to assist with conversion of USA-format date text values to actual date type values. See 'ImportData_Employees.sql' for details.
- Tables load order and basic QA checks (table record counts, and inspection of data read into some rows) is detailed in 'QA_Check_TablesLoadOrderAndRecordCounts.txt'.

Data Analysis:
- 00_All_DataAnalysis_Queries_Combined.sql
- 01_EmployeeDetailsIncludingSalary.sql
- 02_EmployeesHiredIn1986.sql
- 03_ManagerOfEachDepartment.sql
- 04_EmployeeDepartmentDetails.sql
- 05_EmployeesNamedHerculesB.sql
- 06_EmployeesInSalesDepartment.sql
- 07_EmployeesInSalesOrDevelopmentDepartments.sql
- 08_FrequencyCountsOfEmployeeLastNames.sql

# References

The following references were used in the development of the solution for this Challenge.

## QuickDBD
- QuickDBD documentation ('Docs' menu within the tool)

## PostgreSQL
- Postgres SQL Language documentation ( https://www.postgresql.org/docs/current/sql.html )
