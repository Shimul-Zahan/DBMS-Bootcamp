-- Write your PostgreSQL query statement below
select customer_id 
from (
    select c.customer_id, count(distinct(product_key)) as total_product
    from Customer c
    group by c.customer_id
) as customer_product_count
where total_product = (select count(*) from Product)