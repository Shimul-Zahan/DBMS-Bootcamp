## 1068. Product Sales Analysis I

**Difficulty**: Easy

### Problem Description:

We have two tables, **Sales** and **Product**. The **Sales** table contains information about the sales of products, including the product ID, the year of sale, the quantity sold, and the price per unit. The **Product** table contains the product names.

Write a SQL query to report the `product_name`, `year`, and `price` for each `sale_id` in the **Sales** table.

### Tables

#### Sales Table:

| Column Name | Type  |
|-------------|-------|
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |

- `(sale_id, year)` is the primary key for this table.
- `product_id` is a foreign key that references the **Product** table.
- Each row shows a sale on a product, including the quantity and price per unit.

#### Product Table:

| Column Name  | Type    |
|--------------|---------|
| product_id   | int     |
| product_name | varchar |

- `product_id` is the primary key for this table.
- Each row contains the name of a product.

### Task

Write a SQL query to report the `product_name`, `year`, and `price` for each sale in the **Sales** table.

### Example

#### Input:

**Sales Table:**

| sale_id | product_id | year | quantity | price |
|---------|------------|------|----------|-------|
| 1       | 101        | 2020 | 5        | 20    |
| 2       | 102        | 2021 | 2        | 15    |
| 3       | 101        | 2021 | 10       | 22    |
| 4       | 103        | 2020 | 3        | 25    |

**Product Table:**

| product_id | product_name |
|------------|--------------|
| 101        | Product A    |
| 102        | Product B    |
| 103        | Product C    |

#### Output:

| product_name | year | price |
|--------------|------|-------|
| Product A    | 2020 | 20    |
| Product B    | 2021 | 15    |
| Product A    | 2021 | 22    |
| Product C    | 2020 | 25    |

### Explanation:

- For **sale_id** 1, the product is `Product A` in the year `2020`, with a price of `20`.
- For **sale_id** 2, the product is `Product B` in the year `2021`, with a price of `15`.
- For **sale_id** 3, the product is `Product A` in the year `2021`, with a price of `22`.
- For **sale_id** 4, the product is `Product C` in the year `2020`, with a price of `25`.

The result is a table showing the product name, year, and price for each sale.

### Note:

- The output table should be in any order.
