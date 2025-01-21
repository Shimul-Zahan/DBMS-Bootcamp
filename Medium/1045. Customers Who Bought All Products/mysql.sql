# Write your MySQL query statement below
select customer_id 
from (
    select c.customer_id, count(distinct(product_key)) as total_product
    from Customer c
    group by c.customer_id
) as customer_product_count
where total_product = (select count(*) from Product)

-- SELECT customer_id
-- FROM (
--     SELECT c.customer_id, COUNT(DISTINCT c.product_key) AS total_product
--     FROM Customer c
--     GROUP BY c.customer_id
-- ) AS customer_product_count
-- WHERE total_product = (SELECT COUNT(*) FROM Product);


-- SELECT customer_id
-- FROM Customer
-- GROUP BY customer_id
-- HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product);