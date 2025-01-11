# 596. Classes More Than 5 Students

### Problem Statement
You are given a table `Courses`:

| Column Name | Type    |
|-------------|---------|
| student     | varchar |
| class       | varchar |

- `(student, class)` is the primary key.
- Each row in the table represents the name of a student and the class they are enrolled in.

Write a solution to find all classes that have at least five students.

### Example

#### Input
| student | class    |
|---------|----------|
| A       | Math     |
| B       | English  |
| C       | Math     |
| D       | Biology  |
| E       | Math     |
| F       | Computer |
| G       | Math     |
| H       | Math     |
| I       | Math     |

#### Output
| class   |
|---------|
| Math    |

#### Explanation
- `Math` has 6 students, so it is included in the result.
- `English`, `Biology`, and `Computer` each have only 1 student, so they are not included.
