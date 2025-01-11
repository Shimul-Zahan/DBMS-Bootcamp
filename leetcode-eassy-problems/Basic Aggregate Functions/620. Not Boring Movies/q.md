# 620. Not Boring Movies

**Difficulty:** Easy  
**Topics:** SQL  
**Schema:**  
Table: `Cinema`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| movie       | varchar |
| description | varchar |
| rating      | float   |

- `id` is the primary key (column with unique values) for this table.
- Each row contains information about the name of a movie, its genre, and its rating.
- `rating` is a 2 decimal places float in the range [0, 10].

---

### Problem Statement
Write a solution to report the movies with an **odd-numbered** `id` and a `description` that is **not** `"boring"`.  
Return the result table ordered by `rating` in **descending** order.

---

### Example

#### Input
`Cinema` table:

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 1  | War        | great 3D    | 8.9    |
| 2  | Science    | fiction     | 8.5    |
| 3  | irish      | boring      | 6.2    |
| 4  | Ice song   | Fantacy     | 8.6    |
| 5  | House card | Interesting | 9.1    |

#### Output
| id | movie      | description | rating |
|----|------------|-------------|--------|
| 5  | House card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |

---

### Explanation
- We have three movies with odd-numbered IDs: `1`, `3`, and `5`.  
- The movie with `id = 3` has the description `"boring"`, so we exclude it from the result.  
- The result is sorted by `rating` in descending order.
