# 619. Biggest Single Number

### Problem Statement
You are given a table `MyNumbers`:

| Column Name | Type |
|-------------|------|
| num         | int  |

- This table may contain duplicate numbers, and there is no primary key.

A single number is defined as a number that appears only once in the `MyNumbers` table.

Write a solution to find the largest single number. If no single number exists, return `null`.

---

### Example

#### Example 1

**Input**
| num |
|-----|
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |

**Output**
| num |
|-----|
| 6   |

**Explanation**:  
The single numbers are 1, 4, 5, and 6. The largest single number is 6, so we return it.

#### Example 2

**Input**
| num |
|-----|
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |

**Output**
| num  |
|------|
| null |

**Explanation**:  
There are no single numbers in the table, so we return `null`.
