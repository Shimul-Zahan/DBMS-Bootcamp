# 1251. Average Selling Price

## Problem Description

You are given two tables:

### `Prices` Table

| Column Name  | Type   |
|--------------|--------|
| product_id   | int    |
| start_date   | date   |
| end_date     | date   |
| price        | int    |

- `(product_id, start_date, end_date)` is the primary key.
- Each row indicates the price of `product_id` in the period from `start_date` to `end_date`.
- For each `product_id`, there are no overlapping periods (no intersecting periods for the same product).

---

### `UnitsSold` Table

| Column Name   | Type   |
|---------------|--------|
| product_id    | int    |
| purchase_date | date   |
| units         | int    |

- This table may contain duplicate rows.
- Each row indicates the date, units, and `product_id` of products sold.

---

## Task

Write a query to calculate the **average selling price** for each product. 

- The **average price** is defined as:
  \[
  \text{Average Selling Price} = \frac{\text{Total Price of Product Sold}}{\text{Number of Units Sold}}
  \]
- If a product does not have any sold units, its **average selling price** is assumed to be `0`.

### Output Format

Return a result table with the following columns:

| Column Name     | Type   |
|------------------|--------|
| product_id       | int    |
| average_price    | float  |

- The `average_price` should be rounded to **2 decimal places**.
- Return the result in any order.

---

### Example

#### Input

**`Prices` Table**:

| product_id | start_date | end_date   | price |
|------------|------------|------------|-------|
| 1          | 2019-02-17 | 2019-02-28 | 5     |
| 1          | 2019-03-01 | 2019-03-22 | 20    |
| 2          | 2019-02-01 | 2019-02-20 | 15    |
| 2          | 2019-02-21 | 2019-03-31 | 30    |

**`UnitsSold` Table**:

| product_id | purchase_date | units |
|------------|---------------|-------|
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |

---

#### Output

| product_id | average_price |
|------------|---------------|
| 1          | 6.96          |
| 2          | 16.96         |

---

#### Explanation

1. **For Product 1**:
   - Total price = \( (100 \times 5) + (15 \times 20) = 500 + 300 = 800 \)
   - Total units sold = \( 100 + 15 = 115 \)
   - Average price = \( \frac{800}{115} = 6.96 \)

2. **For Product 2**:
   - Total price = \( (200 \times 15) + (30 \times 30) = 3000 + 900 = 3900 \)
   - Total units sold = \( 200 + 30 = 230 \)
   - Average price = \( \frac{3900}{230} = 16.96 \)
