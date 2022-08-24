-- 2. How many unique customer orders were made?

select count(DISTINCT order_id) as orders       
    from customer_orders