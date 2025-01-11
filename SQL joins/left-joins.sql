-- Left join
-- If are the record are same or not same
-- Fetch the employee name and the department name they belong to
select 
	e.employee_name, d.department_name
from 
	public.employee e
left join 
	public.department d
on 
	e.department_id = d.department_id

-- Fetch All the employee name and the department name and manager name they belong to

select 
	e.employee_id, e.employee_name, d.department_name, m.manager_name
from 
	public.employee e
left join 
	public.department d 
on 
	e.department_id = d.department_id
left join 
	public.manager m 
on 
	e.manager_id = m.manager_id
