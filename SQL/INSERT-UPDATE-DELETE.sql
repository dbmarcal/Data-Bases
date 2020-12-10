USE employees;
# Insert
insert into titles
(
	emp_no,
    title,
    from_date
)
values
(
	'999999',
    'Senior Engineer',
    '1997-10-01'
);



SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC;


insert into dept_emp
(
	emp_no,
    dept_no,
    from_date,
    to_date
)
values
(
	999903,
    'd005',
    '1997-10-01',
    '9999-01-01'
);



# UPDATE
UPDATE departments 
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_no = 'd010';
    
#DELETE
DELETE FROM departments 
WHERE
    dept_no = 'd010';
