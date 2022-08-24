-- 5. What was the difference between the longest and shortest delivery times for all orders?

select (max(duration) - min(duration)) as difference_delivery_time
    from runner_orders
    where duration IS NOT NULL