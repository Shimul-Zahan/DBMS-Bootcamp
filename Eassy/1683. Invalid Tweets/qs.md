# 1683. Invalid Tweets

**Difficulty:** Easy  
**Topics:** SQL, Database, Query Optimization  

---

## Problem Description

You are given a table `Tweets` that contains all the tweets in a social media application. The structure of the table is as follows:

### Table: Tweets

| Column Name | Type    |
|-------------|---------|
| tweet_id    | int     |
| content     | varchar |

- `tweet_id` is the **primary key** (a column with unique values) for this table.  
- The `content` column contains the text of the tweet, which uses characters from an American Keyboard only.  
- Tweets are invalid if the length of their `content` exceeds **15 characters**.

---

### Task

Write a query to find the `tweet_id` of all **invalid tweets**, where the content's length is **strictly greater than 15 characters**.  
Return the result table in any order.

---

### Input

**Table Example:**  
`Tweets`  

| tweet_id | content                           |
|----------|-----------------------------------|
| 1        | Let us Code                       |
| 2        | More than fifteen chars are here! |

---

### Output

**Result Example:**  

| tweet_id |
|----------|
| 2        |

---

### Explanation

- **Tweet 1:** The length of the `content` is `11`. This is a valid tweet.  
- **Tweet 2:** The length of the `content` is `33`. This is invalid because it exceeds 15 characters.

Thus, the result contains only the `tweet_id` of invalid tweets.

---

### Notes

- Return only the `tweet_id` of invalid tweets.  
- Order of results does not matter.  
- Use the appropriate SQL or pandas query to solve this problem.

---

## Constraints

- Each tweet is guaranteed to have content within the storage limits of a `varchar` field.  
- The `content` column contains no special characters outside the American Keyboard.

---
