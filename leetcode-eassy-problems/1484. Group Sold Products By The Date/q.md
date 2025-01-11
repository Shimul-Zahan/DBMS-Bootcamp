# 1484. Group Sold Products By The Date

## Table Schema

### Table: Activities

| Column Name | Type    |
|-------------|---------|
| sell_date   | date    |
| product     | varchar |

- There is no primary key (column with unique values) for this table. It may contain duplicates.
- Each row of this table contains the product name and the date it was sold in a market.

---

## Problem Description

Write a solution to find, for each date, the number of different products sold and their names.

### Requirements:
1. The product names for each date should be sorted lexicographically.
2. Return the result table ordered by `sell_date`.

---

## Output Format

The result should be formatted as shown in the example.

---

## Example

### Input: Activities Table

| sell_date  | product     |
|------------|-------------|
| 2020-05-30 | Headphone   |
| 2020-06-01 | Pencil      |
| 2020-06-02 | Mask        |
| 2020-05-30 | Basketball  |
| 2020-06-01 | Bible       |
| 2020-06-02 | Mask        |
| 2020-05-30 | T-Shirt     |

### Output: Result Table

| sell_date  | num_sold | products                     |
|------------|----------|------------------------------|
| 2020-05-30 | 3        | Basketball,Headphone,T-Shirt |
| 2020-06-01 | 2        | Bible,Pencil                 |
| 2020-06-02 | 1        | Mask                         |

---

## Explanation

1. For `2020-05-30`, the sold items were `Headphone`, `Basketball`, and `T-Shirt`. 
   - After sorting lexicographically: `Basketball`, `Headphone`, `T-Shirt`.
   - Number of unique items: 3.

2. For `2020-06-01`, the sold items were `Pencil` and `Bible`.
   - After sorting lexicographically: `Bible`, `Pencil`.
   - Number of unique items: 2.

3. For `2020-06-02`, the sold item was `Mask` (only one unique product).
   - No sorting needed.
   - Number of unique items: 1.
