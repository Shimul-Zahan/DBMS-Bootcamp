# 1517. Find Users With Valid E-Mails

**Difficulty:** Easy

## Table Schema

### Table: Users

| Column Name   | Type    |
|---------------|---------|
| user_id       | int     |
| name          | varchar |
| mail          | varchar |

- `user_id` is the primary key (column with unique values) for this table.
- This table contains information about the users signed up on a website. Some emails in the table are invalid.

---

## Problem Description

Write a solution to find the users who have valid emails.

### A valid email must satisfy the following conditions:
1. **Prefix Name**:
   - Starts with a letter (either upper or lower case).
   - May contain letters, digits, underscore `_`, period `.`, and/or dash `-`.
2. **Domain**:
   - Must be `@leetcode.com`.

Return the result table in any order.

---

## Output Format

The result should be formatted as shown in the example.

---

## Example

### Input: Users Table

| user_id | name      | mail                    |
|---------|-----------|-------------------------|
| 1       | Winston   | winston@leetcode.com    |
| 2       | Jonathan  | jonathanisgreat         |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
| 5       | Marwan    | quarz#2020@leetcode.com |
| 6       | David     | david69@gmail.com       |
| 7       | Shapiro   | .shapo@leetcode.com     |

### Output: Result Table

| user_id | name      | mail                    |
|---------|-----------|-------------------------|
| 1       | Winston   | winston@leetcode.com    |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |

---

## Explanation

- The email of **user 2** (`jonathanisgreat`) does not have a domain.
- The email of **user 5** (`quarz#2020@leetcode.com`) contains an invalid `#` character.
- The email of **user 6** (`david69@gmail.com`) does not use the `@leetcode.com` domain.
- The email of **user 7** (`.shapo@leetcode.com`) starts with a period, which is invalid.

Only the emails of **users 1, 3, and 4** meet the criteria.
