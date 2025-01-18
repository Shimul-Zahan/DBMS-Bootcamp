# 1211. Queries Quality and Percentage

## Problem Description

You are given the following table:

### `Queries` Table

| Column Name | Type    |
|-------------|---------|
| query_name  | varchar |
| result      | varchar |
| position    | int     |
| rating      | int     |

- This table may contain duplicate rows.
- The `position` column has values between **1 and 500**.
- The `rating` column has values between **1 and 5**.
- Queries with a `rating` less than **3** are considered **poor queries**.

---

## Definitions

1. **Query Quality**:
   - The average of the ratio between `rating` and `position` for each `query_name`.

2. **Poor Query Percentage**:
   - The percentage of queries for each `query_name` with a `rating` less than **3**.

---

## Task

Write a query to calculate:

1. **`quality`**: The query quality for each `query_name`, rounded to **2 decimal places**.
2. **`poor_query_percentage`**: The percentage of poor queries for each `query_name`, rounded to **2 decimal places**.

Return the result table with the following columns:

| Column Name            | Type   |
|-------------------------|--------|
| query_name             | varchar|
| quality                | float  |
| poor_query_percentage  | float  |

- Return the results in any order.

---

## Example

### Input

**`Queries` Table**:

| query_name | result            | position | rating |
|------------|-------------------|----------|--------|
| Dog        | Golden Retriever  | 1        | 5      |
| Dog        | German Shepherd   | 2        | 5      |
| Dog        | Mule              | 200      | 1      |
| Cat        | Shirazi           | 5        | 2      |
| Cat        | Siamese           | 3        | 3      |
| Cat        | Sphynx            | 7        | 4      |

---

### Output

| query_name | quality | poor_query_percentage |
|------------|---------|-----------------------|
| Dog        | 2.50    | 33.33                 |
| Cat        | 0.66    | 33.33                 |

---

### Explanation

1. **For `Dog`**:
   - **Quality**: 
     \[
     \text{Quality} = \frac{\left( \frac{5}{1} + \frac{5}{2} + \frac{1}{200} \right)}{3} = 2.50
     \]
   - **Poor Query Percentage**:
     - Total queries = 3
     - Poor queries = 1 (`rating` = 1)
     - \[
     \text{Percentage} = \frac{1}{3} \times 100 = 33.33
     \]

2. **For `Cat`**:
   - **Quality**:
     \[
     \text{Quality} = \frac{\left( \frac{2}{5} + \frac{3}{3} + \frac{4}{7} \right)}{3} = 0.66
     \]
   - **Poor Query Percentage**:
     - Total queries = 3
     - Poor queries = 1 (`rating` = 2)
     - \[
     \text{Percentage} = \frac{1}{3} \times 100 = 33.33
     \]
