## Problem: List the Products Ordered in a Period

### Problem Description

You are given two tables, `Products` and `Orders`. The task is to get the names of products that have at least 100 units ordered in February 2020, along with the total amount ordered for each product.

### Tables

#### Products Table

| Column Name     | Type     |
|-----------------|----------|
| product_id      | int      |
| product_name    | varchar  |
| product_category| varchar  |

- `product_id` is the primary key for this table.
- This table contains data about the company's products.

#### Orders Table

| Column Name     | Type     |
|-----------------|----------|
| product_id      | int      |
| order_date      | date     |
| unit            | int      |

- `product_id` is a foreign key referencing the `Products` table.
- `unit` is the number of products ordered on the given `order_date`.
- This table may contain duplicate rows.

### Requirements

Return the names of products that have at least 100 units ordered in **February 2020** and the total amount ordered for each product. The result should be in any order.

### Example Input

#### Products table:

| product_id | product_name          | product_category |
|------------|-----------------------|------------------|
| 1          | Leetcode Solutions    | Book             |
| 2          | Jewels of Stringology | Book             |
| 3          | HP                    | Laptop           |
| 4          | Lenovo                | Laptop           |
| 5          | Leetcode Kit          | T-shirt          |

#### Orders table:

| product_id | order_date  | unit |
|------------|-------------|------|
| 1          | 2020-02-05  | 60   |
| 1          | 2020-02-10  | 70   |
| 2          | 2020-01-18  | 30   |
| 2          | 2020-02-11  | 80   |
| 3          | 2020-02-17  | 2    |
| 3          | 2020-02-24  | 3    |
| 4          | 2020-03-01  | 20   |
| 4          | 2020-03-04  | 30   |
| 4          | 2020-03-04  | 60   |
| 5          | 2020-02-25  | 50   |
| 5          | 2020-02-27  | 50   |
| 5          | 2020-03-01  | 50   |

### Example Output

| product_name       | unit |
|--------------------|------|
| Leetcode Solutions | 130  |
| Leetcode Kit       | 100  |

### Explanation

- `Leetcode Solutions` was ordered a total of `60 + 70 = 130` units in February 2020.
- `Leetcode Kit` was ordered a total of `50 + 50 = 100` units in February 2020.
- `Jewels of Stringology` was ordered `80` units in February but less than `100`, so it is not included.
- `HP` was ordered only `5` units in February, so it is not included.
- `Lenovo` was not ordered at all in February 2020.

### Solution

```sql
SELECT 
    p.product_name, 
    SUM(o.unit) AS unit
FROM Products p
JOIN Orders o
    ON p.product_id = o.product_id
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY p.product_name
HAVING SUM(o.unit) >= 100;
