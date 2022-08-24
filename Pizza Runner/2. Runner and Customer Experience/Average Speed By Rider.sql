-- 6. What was the average speed for each runner for each delivery and do you notice any trend for these values?

select runner_id,
       order_id,
       round((distance/duration*60),2) as avg_speed
    from runner_orders
    where distance IS NOT NULL
    order by 1