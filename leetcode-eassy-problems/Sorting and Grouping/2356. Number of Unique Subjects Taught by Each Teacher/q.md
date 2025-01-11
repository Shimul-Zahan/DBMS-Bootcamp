# 2356. Number of Unique Subjects Taught by Each Teacher

## Problem

You are given a table `Teacher` which contains the following columns:

| Column Name  | Type   |
|--------------|--------|
| teacher_id   | int    |
| subject_id   | int    |
| dept_id      | int    |

- `(subject_id, dept_id)` is the primary key of this table, meaning each combination of `subject_id` and `dept_id` is unique.
- Each row in this table represents a teacher's record for teaching a subject in a department.

Your task is to calculate the **number of unique subjects** each teacher teaches in the university.

Return the result table in any order.

### Example 1:

#### Input:
Teacher table:

| teacher_id | subject_id | dept_id |
|------------|------------|---------|
| 1          | 2          | 3       |
| 1          | 2          | 4       |
| 1          | 3          | 3       |
| 2          | 1          | 1       |
| 2          | 2          | 1       |
| 2          | 3          | 1       |
| 2          | 4          | 1       |

#### Output:

| teacher_id | cnt |
|------------|-----|
| 1          | 2   |
| 2          | 4   |

#### Explanation:

- **Teacher 1**:
  - Teaches subject 2 in departments 3 and 4.
  - Teaches subject 3 in department 3.
  - **Total unique subjects**: 2 (subject 2 and subject 3).

- **Teacher 2**:
  - Teaches subject 1 in department 1.
  - Teaches subject 2 in department 1.
  - Teaches subject 3 in department 1.
  - Teaches subject 4 in department 1.
  - **Total unique subjects**: 4 (subjects 1, 2, 3, and 4).

### SQL Solution:

```sql
SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;
