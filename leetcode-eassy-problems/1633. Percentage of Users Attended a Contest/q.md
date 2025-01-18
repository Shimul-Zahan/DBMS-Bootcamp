# 1633. Percentage of Users Attended a Contest

### Problem Statement
Given two tables:  
1. **Users**  
   | Column Name | Type    |  
   |-------------|---------|  
   | user_id     | int     |  
   | user_name   | varchar |  
   `user_id` is the primary key of this table.  

2. **Register**  
   | Column Name | Type    |  
   |-------------|---------|  
   | contest_id  | int     |  
   | user_id     | int     |  
   `(contest_id, user_id)` is the primary key of this table.  

Write an SQL query to find the **percentage of users registered** for each contest. The percentage should be rounded to **two decimals**.  
- The result table should be ordered by **percentage in descending order**.  
- In case of a tie, order by `contest_id` in ascending order.

### Example

#### Input
**Users**  
| user_id | user_name |  
|---------|-----------|  
| 6       | Alice     |  
| 2       | Bob       |  
| 7       | Alex      |  

**Register**  
| contest_id | user_id |  
|------------|---------|  
| 215        | 6       |  
| 209        | 2       |  
| 208        | 2       |  
| 210        | 6       |  
| 208        | 6       |  
| 209        | 7       |  
| 209        | 6       |  
| 215        | 7       |  
| 208        | 7       |  
| 210        | 2       |  
| 207        | 2       |  
| 210        | 7       |  

#### Output
| contest_id | percentage |  
|------------|------------|  
| 208        | 100.0      |  
| 209        | 100.0      |  
| 210        | 100.0      |  
| 215        | 66.67      |  
| 207        | 33.33      |  

### Explanation
- Contests 208, 209, and 210 have all the users registered (3 out of 3 users), so the percentage is 100%.  
- Contest 215 has 2 users registered out of 3 (2/3 * 100 = 66.67%).  
- Contest 207 has 1 user registered out of 3 (1/3 * 100 = 33.33%).  

