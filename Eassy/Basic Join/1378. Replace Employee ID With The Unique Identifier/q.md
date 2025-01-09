## 1378. Replace Employee ID With The Unique Identifier

**Difficulty**: Easy

### Problem Description:

We have two tables, **Employees** and **EmployeeUNI**. The **Employees** table contains information about the employees, such as their ID and name. The **EmployeeUNI** table contains the unique ID of employees. If an employee has a unique ID, it should be shown; otherwise, it should be replaced with `null`.

You need to write a SQL query that shows the **unique_id** for each employee. If the employee does not have a unique ID, the result should show `null`.

### Tables

#### Employees Table:

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the primary key for this table and represents the unique identifier for each employee.

#### EmployeeUNI Table:

| Column Name | Type |
|-------------|------|
| id          | int  |
| unique_id   | int  |

- `(id, unique_id)` is the primary key for this table. 
- `id` represents the employee ID.
- `unique_id` is the unique identifier for the employee.

### Task

Write a SQL query that returns the **unique_id** of each employee. If an employee does not have a unique ID, replace it with `null`.

### Example

#### Input:

**Employees Table:**

| id  | name     |
|-----|----------|
| 1   | Alice    |
| 7   | Bob      |
| 11  | Meir     |
| 90  | Winston  |
| 3   | Jonathan |

**EmployeeUNI Table:**

| id  | unique_id |
|-----|-----------|
| 3   | 1         |
| 11  | 2         |
| 90  | 3         |

#### Output:

| unique_id | name     |
|-----------|----------|
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |

### Explanation:

- **Alice** and **Bob** do not have a unique ID, so their result shows `null`.
- **Meir** has a unique ID of 2, so the result shows `2`.
- **Winston** has a unique ID of 3, so the result shows `3`.
- **Jonathan** has a unique ID of 1, so the result shows `1`.

### Note:

- If an employee does not have a corresponding unique ID, `null` should be shown.
- The result table should be ordered in any way.
