-- 3. How many successful orders were delivered by each runner?

select runner_id,
       count(order_id) as orders
    from runner_orders
    where cancellation IS NULL or duration IS NOT NULL
    group by 1
    order by 1 ASC
    