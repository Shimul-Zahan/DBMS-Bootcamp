## 577. Employee Bonus

**Difficulty**: Easy

### Problem Description:

We have two tables, **Employee** and **Bonus**. The **Employee** table contains information about the employees, such as their ID, name, supervisor ID, and salary. The **Bonus** table contains the bonus amount for each employee.

You need to write a SQL query to find the **name** and **bonus** amount for each employee who has a bonus less than 1000. If an employee does not have a bonus, it should be displayed as **null**.

### Tables

#### Employee Table:

| Column Name | Type    |
|-------------|---------|
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |

- `empId` is the unique identifier for each employee.
- `supervisor` refers to the ID of the employee's supervisor. It may be null for top-level employees.

#### Bonus Table:

| Column Name | Type |
|-------------|------|
| empId       | int  |
| bonus       | int  |

- `empId` is a foreign key that references the `empId` from the **Employee** table.
- `bonus` is the bonus amount for the employee.

### Task

Write a SQL query to report the **name** and **bonus** amount of each employee who has a bonus less than 1000. If the employee does not have a bonus, display **null** as the bonus.

### Example

#### Input:

**Employee Table:**

| empId | name   | supervisor | salary |
|-------|--------|------------|--------|
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |

**Bonus Table:**

| empId | bonus |
|-------|-------|
| 2     | 500   |
| 4     | 2000  |

#### Output:

| name | bonus |
|------|-------|
| Brad | null  |
| John | null  |
| Dan  | 500   |

### Explanation:

- **Brad** has no bonus, so the result for Brad shows `null`.
- **John** also has no bonus, so his result shows `null`.
- **Dan** has a bonus of 500, which is less than 1000, so his result shows `500`.
- **Thomas** has a bonus of 2000, which is greater than 1000, so he is not included in the result.

### Note:

- The result table should include all employees who meet the condition.
- If an employee doesn't have a bonus, the bonus should be displayed as `null`.
