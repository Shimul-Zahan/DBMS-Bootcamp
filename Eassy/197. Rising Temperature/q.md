# 197. Rising Temperature

## Problem Description

Given a table named `Weather` that contains information about temperatures recorded on certain days, you are tasked with finding all dates' IDs with higher temperatures compared to their previous day's temperature (yesterday).

### SQL Schema

The table has the following columns:

| Column Name   | Type    |
| ------------- | ------- |
| id            | int     |
| recordDate    | date    |
| temperature   | int     |

- `id` is the column with unique values for this table.
- There are no different rows with the same `recordDate`.
- This table contains information about the temperature on a certain day.

### Task

Write a solution to find all dates' IDs where the temperature is higher than the previous day's temperature.

### Input Example

The `Weather` table looks as follows:

| id  | recordDate  | temperature |
| --- | ----------- | ----------- |
| 1   | 2015-01-01  | 10          |
| 2   | 2015-01-02  | 25          |
| 3   | 2015-01-03  | 20          |
| 4   | 2015-01-04  | 30          |

### Output Example

The expected result is the IDs of the dates where the temperature is higher than the previous day. The result would be:

| id  |
| --- |
| 2   |
| 4   |

### Explanation

- On 2015-01-02, the temperature was higher than the previous day (10 → 25).
- On 2015-01-04, the temperature was higher than the previous day (20 → 30).

### SQL Query Solution