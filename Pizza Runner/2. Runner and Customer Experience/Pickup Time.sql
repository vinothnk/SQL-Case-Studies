-- 2. What was the average time in minutes it took for each runner to arrive at the Pizza Runner HQ to pickup the order?

with table1 as
(SELECT  ro.order_id,
        ro.runner_id, 
        DATE_PART('minute', ro.pickup_time - co.order_time) +
        DATE_PART('seconds', ro.pickup_time - co.order_time)/60 as minutes
             FROM
        runner_orders ro
      JOIN
        customer_orders co ON co.order_id = ro.order_id)

select table1.runner_id,
       count(table1.order_id),
       ROUND(CAST(AVG(minutes) AS DECIMAL), 2) AS avg_minutes_to_pickup
    from table1
    where minutes is not null
    group by 1