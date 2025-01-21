# Problem Explanation

Given two tables, `Customer` and `Product`, we want to find the `customer_id` from the `Customer` table who has bought **all** the products listed in the `Product` table. The result should be returned in any order.

### Tables

- **Customer**: Contains `customer_id` and `product_key`. It may contain duplicate rows.
- **Product**: Contains a unique `product_key`.

### Example Input and Output

#### Input

**Customer Table**
```
+-------------+-------------+
| customer_id | product_key |
+-------------+-------------+
| 1           | 5           |
| 2           | 6           |
| 3           | 5           |
| 3           | 6           |
| 1           | 6           |
+-------------+-------------+
```

**Product Table**
```
+-------------+
| product_key |
+-------------+
| 5           |
| 6           |
+-------------+
```

#### Output

```
+-------------+
| customer_id |
+-------------+
| 1           |
| 3           |
+-------------+
```

### Explanation
- Customers with IDs 1 and 3 have bought both products 5 and 6, hence they are included in the result.