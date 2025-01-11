-- create table for departments
CREATE TABLE Department (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

-- inser data to the department table
INSERT INTO Department (department_name) VALUES
('HR'),
('Engineering'),
('Marketing'),
('Sales');

-- Create the Employee table
CREATE TABLE Employee (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_id INT REFERENCES Department(department_id),
    manager_id INT
);

-- Insert values into the Employee table
INSERT INTO Employee (employee_name, department_id, manager_id) VALUES
('Alice', 1, 1),
('Bob', 2, 2),
('Charlie', 3, 3),
('Diana', 4, 4),
('Eve', 2, 2),
('Shimul', 1, 4),
('Shimul', null, 4);

-- Create the Manager table
CREATE TABLE Manager (
    manager_id SERIAL PRIMARY KEY,
    manager_name VARCHAR(50) NOT NULL,
    department_id INT REFERENCES Department(department_id)
);

-- Insert values into the Manager table
INSERT INTO Manager (manager_name, department_id) VALUES
('John', 1),
('Michael', 2),
('Sara', 3),
('Laura', 4);

-- Create the Projects table
CREATE TABLE Projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    department_id INT REFERENCES Department(department_id),
    employee_id INT REFERENCES Employee(employee_id)
);

-- Insert values into the Projects table
INSERT INTO Projects (project_name, department_id, employee_id) VALUES
('Employee Onboarding System', 1, 1),
('AI Development', 2, 2),
('Social Media Campaign', 3, 3),
('Sales Tracking System', 4, 4),
('Data Analysis Tool', 2, 5);

create table company(
	comapny_id SERIAL primary key,
	company_name VARCHAR(100) NOT NULL,
	company_location VARCHAR(100) NOT NULL
)

insert into company (company_name, company_location) values ('GooMiApp', 'Bangladesh');

-- get all the record from the tables
select * from public.department;
select * from public.employee;
select * from public.manager;
select * from public.projects;
select * from public.company;



-- All joins here
/*
	1. inner join
	2. left join
	3. right join
*/

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





-- Left join
-- If are the record are same or not same
-- Fetch the employee name and the department name they belong to
-- first inner join then add additional records from the left table (most important)
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




-- rigth join
-- If are the record are same or not same
-- Fetch the employee name and the department name they belong to
-- first inner join then add additional records from the right table (most important)
select 
	e.employee_name, d.department_name
from 
	public.employee e
right join 
	public.department d
on 
	e.department_id = d.department_id

-- Fetch All the employee name and the department name and manager name they belong to

select 
	e.employee_id, e.employee_name, d.department_name, m.manager_name
from 
	public.employee e
right join 
	public.department d 
on 
	e.department_id = d.department_id
right join 
	public.manager m 
on 
	e.manager_id = m.manager_id



-- select all the employee name, dept name, manager name and assign project name
select e.employee_id, e.employee_name, d.department_name, m.manager_name, p.project_name
from public.employee e
left join public.department d on e.department_id = d.department_id
left join public.manager m on m.manager_id = e.manager_id
left join public.projects p on p.employee_id = e.employee_id




-- Full outer join = Inner join + all remaining from left table + all remaining from right table
select 
	e.employee_name, d.department_name
from 
	public.employee e
full join 
	public.department d
on 
	e.department_id = d.department_id



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



