### Problem: 1148. Article Views I
#### Difficulty: Easy
#### Topics: SQL, Data Querying

---

### **Table: Views**

| Column Name   | Type    |
|---------------|---------|
| article_id    | int     |
| author_id     | int     |
| viewer_id     | int     |
| view_date     | date    |

---

### **Description**

- Each row in the `Views` table records information about an article being viewed.
- A viewer is someone who views an article, and the author is the writer of the article.
- If the `author_id` matches the `viewer_id`, it indicates that the author has viewed their own article.

---

### **Goal**

Find the `author_id` (labeled as `id` in the result) of all authors who have viewed at least one of their own articles.

---

### **Example**

#### **Input:**

`Views` table:
| article_id | author_id | viewer_id | view_date  |
|------------|-----------|-----------|------------|
| 1          | 3         | 5         | 2019-08-01 |
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |

---

#### **Output:**

| id   |
|------|
| 4    |
| 7    |

