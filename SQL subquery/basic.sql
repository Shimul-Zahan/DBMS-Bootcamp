-- Question: Find all the employees who's salary is more than the average salary earn by a employee
1. Find the avg salary
2. filter the employees based on above result

-- for begginner query

select avg(salary) from public.employee

-- avg salary = 37471.428571428571

select * 
from public.employee
where salary > 37471.428571428571

-- For dynamic query here
select *  -- outer query
from public.employee
where salary > (
	select avg(salary) from public.employee -- inner subquery
)


-- More complex quccery
1. scalar subquery
2. multiple row subquery
3. correlated subquery

-- scalar subquery (always return just one row and one colum)
-- Question: Find all the employees who's salary is more than the average salary earn by a employee
1. Find the avg salary
2. filter the employees based on above result

-- for begginner query

select avg(salary) from public.employee

-- avg salary = 37471.428571428571

select * 
from public.employee
where salary > 37471.428571428571

-- For dynamic query here
select *  -- outer query
from public.employee
where salary > (
	select avg(salary) from public.employee -- return only one colum and row
)

-- here this is create a new colum and join it
-- if no need to join new colum use select e.* from public.employee e
select * from public.employee e
join (select avg(salary) as sal from public.employee) as avg_sal
	on e.salary > avg_sal.sal


-- multiple row subquery
1. return multiple col and multiple row
2. return only one colum and multiple row
-- Question: Find the employees who earn highest saray in each department
-- first wee need o calculate highest saray in each department
-- then we calculate with it to employee

-- first part
select d.department_name, max(e.salary)
from employee e
join public.department d
	on d.department_id = e.department_id
group by d.department_id, d.department_name

-- second part
SELECT e.*, d.department_name
FROM public.employee e
JOIN public.department d
    ON d.department_id = e.department_id
WHERE (e.department_id, e.salary) IN (
    SELECT d.department_id, MAX(e.salary)
    FROM public.employee e
    JOIN public.department d
        ON d.department_id = e.department_id
    GROUP BY d.department_id
);



-- output for max(salary)
dept_id | salarty
--------------------
	3	|  55000.00|
	4	|  70000.00
	2	|  62000.00
	1	|  50000.00
-------------------


-- correlated subquery
-- a subquery which is related to the outer query
/* Queston:  */




