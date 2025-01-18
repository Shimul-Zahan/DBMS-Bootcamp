SELECT 
    p.product_id, 
    ROUND(
        COALESCE(
            SUM(
                CASE 
                    WHEN u.purchase_date BETWEEN p.start_date AND p.end_date THEN u.units * p.price
                    ELSE 0
                END
            ) / NULLIF(SUM(
                CASE 
                    WHEN u.purchase_date BETWEEN p.start_date AND p.end_date THEN u.units
                    ELSE 0
                END
            ), 0), 0
        ), 2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
    ON p.product_id = u.product_id
GROUP BY p.product_id;
