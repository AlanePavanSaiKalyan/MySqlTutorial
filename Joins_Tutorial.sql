#-- Joins

	Select * 
    from employee_demographics e
    inner join employee_salary s
		on e.employee_id= s.employee_id
	;
    
    Select e.employee_id,age,occupation
    from employee_demographics e
    inner join employee_salary s
		on e.employee_id = s.employee_id;
        
#--left Join gives all the values in the left table and numms if no data in right table
select * 
from employee_demographics e
left join employee_salary s
	on e.employee_id = s.employee_id;
    
#--right joins gives all the values on the right table and give null if no data on left
select * 
from employee_demographics e
right join employee_salary s
	on e.employee_id =s.employee_id;
    
#--Self Join

Select *
from employee_salary e
join employee_salary s
	on e.employee_id=s.employee_id
    ;
    
    
#--Join Multiple tables
SELECT * 
FROM employee_demographics e
inner join employee_salary s
	on e.employee_id = s.employee_id
inner join parks_departments p
	on p.department_id = s.dept_id;
    
#--UNION and UNION All
SELECT first_name, last_name
from employee_demographics 
union 
select age, gender
from employee_demographics;

# the above query merges first name with age and last name with gender and ths cause data inconsistency..

SELECT first_name, last_name
from employee_demographics
union #gives unique union values ..to get all the values just use union all.
select first_name, last_name
from employee_demographics;

SELECT first_name, last_name,'old_man' as label
from employee_demographics
where age>40 AND gender ='Male'
union
select first_name,last_name,'old_women' as label
from employee_demographics
where age>40 AND gender='Female'
union
select first_name, last_name ,'High Paid' as label
from employee_salary
where salary>70000
order by first_name,last_name
;
