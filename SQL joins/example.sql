
-- select all the employee name, dept name, manager name and assign project name
select e.employee_id, e.employee_name, d.department_name, m.manager_name, p.project_name
from public.employee e
left join public.department d on e.department_id = d.department_id
left join public.manager m on m.manager_id = e.manager_id
left join public.projects p on p.employee_id = e.employee_id
