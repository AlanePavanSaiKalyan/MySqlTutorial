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