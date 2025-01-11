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
('Eve', 2, 2);

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