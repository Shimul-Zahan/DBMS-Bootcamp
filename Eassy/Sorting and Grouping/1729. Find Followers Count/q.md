# 1729. Find Followers Count

**Difficulty**: Easy  
**Topics**: SQL  
**Companies**: N/A  

---

### Table: Followers

| Column Name | Type |
|-------------|------|
| user_id     | int  |
| follower_id | int  |

- `(user_id, follower_id)` is the primary key for this table.
- This table contains the IDs of a user and a follower in a social media app where the follower follows the user.

---

### Task

Write a SQL query that, for each user, returns the number of followers.

Return the result table ordered by `user_id` in ascending order.

---

### Example

#### Input
**Followers Table**:
| user_id | follower_id |
|---------|-------------|
| 0       | 1           |
| 1       | 0           |
| 2       | 0           |
| 2       | 1           |

#### Output
| user_id | followers_count |
|---------|-----------------|
| 0       | 1               |
| 1       | 1               |
| 2       | 2               |

**Explanation**:  
- The followers of `0` are `{1}` (1 follower).  
- The followers of `1` are `{0}` (1 follower).  
- The followers of `2` are `{0, 1}` (2 followers).
