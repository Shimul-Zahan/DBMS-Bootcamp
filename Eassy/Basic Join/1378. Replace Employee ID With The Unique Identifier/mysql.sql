SELECT
    empui.unique_id,
    emp.name
FROM 
    Employees AS emp
LEFT JOIN
    EmployeeUNI AS empui
ON
    emp.id = empui.id
