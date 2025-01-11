DELETE p
FROM Person p
JOIN (
    SELECT MIN(id) AS min_id, email
    FROM Person
    GROUP BY email
) AS temp
ON p.id != temp.min_id AND p.email = temp.email;
