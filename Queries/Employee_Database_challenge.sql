-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT emp_no, first_name, last_name
FROM employees

--	2. Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT title, from_date, to_date
FROM titles

--Create a new table using the INTO clause.
--Join both tables on the primary key.
--Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955.
--Order by the employee number.
--retiring emps
DROP TABLE if EXISTS retirement_titles;

SELECT e.emp_no,
		e.first_name,
		e.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti on e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
-- retiring emps 
DROP TABLE if EXISTS unique_titles;

SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no ASC, to_date DESC;

-- retrieve the number of employees by their most recent job title who are about to retire.
--retrieve the number of titles from the Unique Titles table
--create a Retiring Titles table to hold the required information
--Group the table by title, then sort the count column in descending order
--employees retiring by title
DROP TABLE IF EXISTS retiring_titles;

SELECT count(emp_no) as dept_count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count(emp_no) DESC;


--Mentorship Eligibility table
DROP TABLE IF EXISTS mentorship_eligibility;

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		ti.title
INTO mentorship_eligibility
FROM employees as e 
INNER JOIN  dept_emp as de on e.emp_no = de.emp_no
INNER JOIN titles as ti on e.emp_no = ti.emp_no
WHERE (de.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' and '1965-12-31')
ORDER BY e.emp_no;

--tables that can help

--eligible for mentorship by dept

SELECT count(emp_no) as dept_count, title
FROM mentorship_eligibility
GROUP BY title
ORDER BY count(emp_no) DESC;

--total eligible as mentor

SELECT count(*) as total_count
FROM mentorship_eligibility

-- total employees retiring

SELECT count(*) as ret_total
FROM unique_titles