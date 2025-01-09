
### Explanation:

- **Criteria**:
  - A country is considered "big" if:
    - Its `area` is greater than or equal to **3,000,000**.
    - OR its `population` is greater than or equal to **25,000,000**.

- **Columns Returned**:
  - `name`: The name of the country.
  - `population`: The population of the country.
  - `area`: The area of the country.

- **Example Input**:
  ```plaintext
  +-------------+-----------+---------+------------+--------------+
  | name        | continent | area    | population | gdp          |
  +-------------+-----------+---------+------------+--------------+
  | Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
  | Albania     | Europe    | 28748   | 2831741    | 12960000000  |
  | Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
  | Andorra     | Europe    | 468     | 78115      | 3712000000   |
  | Angola      | Africa    | 1246700 | 20609294   | 100990000000 |
  +-------------+-----------+---------+------------+--------------+


- **Example Output**:
```plaintext
+-------------+------------+---------+
| name        | population | area    |
+-------------+------------+---------+
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |
+-------------+------------+---------+

