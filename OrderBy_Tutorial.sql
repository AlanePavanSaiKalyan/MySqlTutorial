#--Order By

SELECT *
FROM employee_demographics
order by first_name;

# by default its ascending order
# change it by adding asc or desc at the end

SELECT * 
from employee_demographics
order by first_name desc;

SELECT *
FROM employee_demographics
order by gender,age desc;
# first order by gender next in gender again order by age
# instead column name also we can use the column number like order by 5,4;



