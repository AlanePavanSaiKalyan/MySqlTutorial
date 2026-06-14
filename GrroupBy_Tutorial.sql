#-- Group By

SELECT gender, avg(age)
FROM employee_demographics
GROUP BY gender;

SELECT dept_id ,count(dept_id) as totalcount 
FROM employee_salary
group by dept_id;

SELECT gender,count(gender) as count
from employee_demographics
group by gender;

SELECT gender, min(age),max(age),count(age)
from employee_demographics
group by gender;

select * from employee_salary;

SELECT dept_id, max(salary), min(salary)
from employee_salary
group by dept_id;
