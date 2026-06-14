#---Having vs Where

SELECT * FROM employee_salary;

SELECT occupation,avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having  avg(salary)>75000;


select * 
from employee_demographics
order by age desc
limit 3;
# limits the output to limited mentioned rows

SELECT *
from employee_demographics
order by age desc
limit 0,1;
# indexing start from 0 and total number of rows needed =2 

#--Alias is just mentioning the column name as ..

select gender, avg(age) as avg_age
from employee_demographics
group by gender
having avg_age>40;

# as is not mandatory
