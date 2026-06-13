SELECT * FROM parks_and_recreation.employee_demographics;

select first_name, (age+10)*20 as Age_incre from
parks_and_recreation.employee_demographics;

SELECT DISTINCT gender 
from parks_and_recreation.employee_demographics;
