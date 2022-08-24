-- 4. What was the average distance travelled for each customer?

select customer_orders.customer_id,
       round(avg(runner_orders.distance),2) as avg_distance
    from runner_orders
    join customer_orders
    on customer_orders.order_id = runner_orders.order_id
    where distance IS NOT NULL
    group by 1
    order by 1