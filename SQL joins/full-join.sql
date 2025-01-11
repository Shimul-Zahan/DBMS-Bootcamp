-- Full outer join = Inner join + all remaining from left table + all remaining from right table
-- Left join == left outer join
-- Right join == right outer join
-- Inner join == join
select 
	e.employee_name, d.department_name
from 
	public.employee e
full join 
	public.department d
on 
	e.department_id = d.department_id
