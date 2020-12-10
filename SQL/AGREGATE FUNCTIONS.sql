# AGREGATE FUNCTIONS

-- Count()
SELECT 
    COUNT(DISTINCT dept_no)
FROM
    dept_emp;


-- SUM()
SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    

-- Min() Max()
SELECT 
    MIN(emp_no)
FROM
    employees;

SELECT 
    MAX(emp_no)
FROM
    employees;
    

-- AVG()
SELECT 
    AVG(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    

-- ROUND()
SELECT 
    ROUND(AVG(salary), 2)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    
    
-- IFNULL() and COALESCE()
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;

SELECT 
    IFNULL(dept_no, 'N/A') AS dept_no,
    IFNULL(dept_name,
            'Department name not provided') AS dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;

