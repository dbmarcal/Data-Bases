USE employees;

# Select
SELECT
    dept_no
FROM
    departments;
   
   
SELECT
    *
FROM
    departments;
   
-- Where   
SELECT
	*
FROM
	employees
WHERE
	first_name = "Elvis";

-- AND
SELECT
	*
FROM
	employees
WHERE
	first_name = "Kellie" AND gender = "F";
 
 
 -- Or
SELECT
	*
FROM
	employees
WHERE
	first_name = "Kellie" OR first_name = "Aruna"; 


-- Operator precedence
SELECT
	*
FROM
	employees
WHERE
	gender= "F" AND (first_name = "Kellie" OR first_name = "Aruna"); 
 

-- In / Not in
SELECT
	*
FROM
	employees
WHERE
	first_name IN ("Denis","Elvis");

SELECT
	*
FROM
	employees
WHERE
	first_name NOT IN ("John","Mark","Jacob");

-- Like / Not like
SELECT
	*
FROM
	employees
WHERE
	hire_date LIKE ('%2000%');

SELECT
	*
FROM
	employees
WHERE
	emp_no LIKE ('1000_');


-- Wildcard Charaters
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%JACK%');

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Jack%'); 


-- Between And
SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN 66000 AND 70000;

SELECT 
    *
FROM
    employees
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';


SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';
    

-- Is not null / is null
SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no IS NOT NULL;

-- Other comparisson operators ( > , < , !=, etc)
SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01'
        AND gender = 'F';

SELECT 
    *
FROM
    salaries
WHERE
    salary > 150000;


-- Select Distinct
SELECT DISTINCT
    hire_date
FROM
    employees;

-- Agregate functions ( count, sum, min, max, avg)
SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 100000;

SELECT 
    COUNT(*)
FROM
    dept_manager;


-- Order by
SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;


-- Group by and As
SELECT 
    salary, COUNT(emp_no) AS emps_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary;


-- Having
SELECT 
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;


-- Where vs Having
SELECT 
    emp_no
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1
ORDER BY emp_no;


-- Limit (the number of rows in output)
SELECT 
    *
FROM
    dept_emp
LIMIT 100;