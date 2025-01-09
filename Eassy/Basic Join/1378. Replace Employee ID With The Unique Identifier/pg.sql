select 
    u.unique_id, e.name
from
    Employees as e
right join 
    EmployeeUNI as u
on
    e.id = u.id