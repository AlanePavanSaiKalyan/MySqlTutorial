SELECT * 
From employee_salary
where first_name = "Leslie";

SELECT * 
FROM employee_salary
WHERE salary < 50000;

SELECT *
FROM employee_demographics
WHERE gender = 'Female';

SELECT *
FROM employee_demographics
WHERE gender != 'Female';

#-- Logical operators

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date >'1980-01-01' 
And gender = 'Female';

# --% means anything and any number of characters
# --_ means only single character any thing

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'A%' OR gender='Male';

SELECT * 
FROM employee_demographics
WHERE (gender = 'Male' OR age>30) AND first_name Not like '%n_';

SELECT * 
FROM employee_demographics
WHERE first_name like '%rr_';