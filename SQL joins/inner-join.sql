-- Inner join / JOIN (same)
-- Fetch the employee name and the department name they belong to

select 
	e.employee_name, d.department_name
from 
	public.employee e
join 
	public.department d
on 
	-- join condition here
	e.department_id = d.department_id



-- Fetch the employee name and the department name and manager name they belong to

select 
	e.employee_id, e.employee_name, d.department_name, m.manager_name
from 
	public.employee e
join 
	public.department d 
on 
	e.department_id = d.department_id
join 
	public.manager m 
on 
	e.manager_id = m.manager_id