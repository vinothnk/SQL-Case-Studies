-- 7. For each customer, how many delivered pizzas had at least 1 change and how many had no changes?

with table1 as
(select customer_orders.customer_id,
       case when customer_orders.exclusions IS NOT NULL THEN 'Changed'
       else 'Not Changed'
       END AS CHANGES
    from customer_orders
    join runner_orders
    on runner_orders.order_id = customer_orders.order_id
    where runner_orders.cancellation IS NULL)

select customer_id,
       changes,
       count(*) as qty_pizza
    from table1
    group by 1,2