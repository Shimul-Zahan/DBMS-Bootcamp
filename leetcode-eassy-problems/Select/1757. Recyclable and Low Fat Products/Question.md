# 1757. Recyclable and Low Fat Products

## Problem Statement

You are given a table `Products` with the following columns:

| Column Name | Type    |
|-------------|---------|
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |

- `product_id` is the primary key (column with unique values) for this table.
- `low_fats` is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
- `recyclable` is an ENUM (category) of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.

### Task:
Write a query to find the **ids** of products that are both **low fat** and **recyclable**.

### Requirements:
- Return the result table in any order.

### Example:

#### Input:
**Products table**:

| product_id | low_fats | recyclable |
|------------|----------|------------|
| 0          | Y        | N          |
| 1          | Y        | Y          |
| 2          | N        | Y          |
| 3          | Y        | Y          |
| 4          | N        | N          |

#### Output:

| product_id |
|------------|
| 1          |
| 3          |

### Explanation:

- **Product 0**: Low fat (`Y`), but not recyclable (`N`), so it is **excluded**.
- **Product 1**: Low fat (`Y`) and recyclable (`Y`), so it is **included**.
- **Product 2**: Not low fat (`N`), but recyclable (`Y`), so it is **excluded**.
- **Product 3**: Low fat (`Y`) and recyclable (`Y`), so it is **included**.
- **Product 4**: Neither low fat (`N`) nor recyclable (`N`), so it is **excluded**.

Thus, the query will return the following result:

| product_id |
|------------|
| 1          |
| 3          |

## Constraints:
- The `Products` table will have a number of rows between 1 and 1000.
- The `product_id` will always be unique.
