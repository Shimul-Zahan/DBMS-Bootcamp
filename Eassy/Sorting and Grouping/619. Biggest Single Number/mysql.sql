SELECT MAX(num) AS num  --for selct the maximum number
FROM (
    -- subquery need for return all single count
    select num
    from MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
) as SingleNumbers