-- 7. What is the successful delivery percentage for each runner?

select runner_id,
       count(order_id) as order_count,
       count(cancellation) as cancel_count,
       100* (count(order_id) - count(cancellation))/count(order_id) as success_percent
    from runner_orders
    group by 1