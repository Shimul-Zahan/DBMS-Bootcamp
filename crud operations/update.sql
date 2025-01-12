select * from employee
order by employee_id
select * from department

-- Add new colum in a existing table table
alter table employee
add salary decimal(10, 2)

-- update the data
UPDATE Employee SET salary = 50000 WHERE employee_name = 'Alice';
update employee set salary = 4800 where employee_name = 'Bob';
UPDATE Employee SET salary = 55000 WHERE employee_name = 'Charlie';
UPDATE Employee SET salary = 70000 WHERE employee_name = 'Diana';
UPDATE Employee SET salary = 62000 WHERE employee_name = 'Eve';
UPDATE Employee SET salary = 10500 WHERE employee_name = 'Shimul' and department_id = 1;
UPDATE Employee SET salary = 10000 WHERE employee_name = 'Shimul' and employee_id = 7;

update employee set department_id = 4 where employee_id = 7;

-- Alternative case for update all at a time
UPDATE Employee
SET salary = CASE
    WHEN LOWER(employee_name) = 'alice' THEN 50000
    WHEN LOWER(employee_name) = 'bob' THEN 60000
    WHEN LOWER(employee_name) = 'charlie' THEN 55000
    WHEN LOWER(employee_name) = 'diana' THEN 70000
    WHEN LOWER(employee_name) = 'eve' THEN 62000
END;
