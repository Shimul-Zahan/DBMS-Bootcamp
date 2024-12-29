## 584. Find Customer Referee
**Difficulty:** Easy  
**Topics:** SQL

### Problem Statement

You have a table called `Customer` with the following columns:

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| referee_id  | int     |

- `id` is the primary key column for this table.
- Each row in this table represents a customer, their name, and the `referee_id` which indicates the customer who referred them. If `referee_id` is `NULL`, it means the customer was not referred by anyone.

### Task
You need to find the names of the customers who are **not referred by the customer with `id = 2`**.

### Input

The table `Customer` will have the following structure and data:

| id  | name | referee_id |
|-----|------|------------|
| 1   | Will | null       |
| 2   | Jane | null       |
| 3   | Alex | 2          |
| 4   | Bill | null       |
| 5   | Zack | 1          |
| 6   | Mark | 2          |

### Output

Return the names of customers who are **not** referred by the customer with `id = 2`.

#### Example 1:

**Input:**

| id  | name | referee_id |
|-----|------|------------|
| 1   | Will | null       |
| 2   | Jane | null       |
| 3   | Alex | 2          |
| 4   | Bill | null       |
| 5   | Zack | 1          |
| 6   | Mark | 2          |

**Output:**

| name |
|------|
| Will |
| Jane |
| Bill |
| Zack |

### Explanation:

- Customers with `id = 1` (Will), `id = 2` (Jane), `id = 4` (Bill), and `id = 5` (Zack) are **not referred by customer with `id = 2`**.
- Customers with `id = 3` (Alex) and `id = 6` (Mark) are referred by the customer with `id = 2`, so they are excluded from the result.
