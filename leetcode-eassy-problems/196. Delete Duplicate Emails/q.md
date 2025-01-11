## Problem Statement

### Delete Duplicate Emails

You are given a table `Person` with two columns: `id` (an integer) and `email` (a string). The `id` column is the primary key, which means that each `id` is unique. However, some emails may appear more than once. You need to delete all duplicate emails, keeping only the row with the smallest `id` for each email.

### Input:

Table `Person`:

| id  | email            |
| --- | ---------------- |
| 1   | john@example.com |
| 2   | bob@example.com  |
| 3   | john@example.com |

### Output:

The result should contain only one row for each distinct email, keeping the row with the smallest `id` for each email.

| id  | email            |
| --- | ---------------- |
| 1   | john@example.com |
| 2   | bob@example.com  |

### Explanation:
- `john@example.com` appears twice: once with `id` = 1 and once with `id` = 3. We keep the row with the smallest `id` (1).
- `bob@example.com` appears only once, so it remains unchanged.

---
