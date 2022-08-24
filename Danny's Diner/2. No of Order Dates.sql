-- 2. How many days has each customer visited the restaurant?

-- 1. pull data from sales for order dates
-- 2. count no of dates for each customer - grp by customer

select customer_id,
       count(DISTINCT order_date) as orders_count
    from sales
    group by 1
    order by 1 DESC