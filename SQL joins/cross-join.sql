-- A CROSS JOIN in SQL produces the Cartesian product of two tables
-- match all records between two tables
-- Cross join here
-- total matches 28 ( dept 4 * employee 7)
select 
	e.employee_name, d.department_name, c.company_name, c.company_location
from 
	public.employee e
left join 
	public.department d
on 
	e.department_id = d.department_id
cross join company c


-- example here
SQL joins\cross-join-table.png
