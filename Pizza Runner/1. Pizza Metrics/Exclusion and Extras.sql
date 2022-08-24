-- 8. How many pizzas were delivered that had both exclusions and extras?

select count(*) as no_of_pizza_delivered_with_exclusionandextras
    from customer_orders
    join runner_orders
    on runner_orders.order_id = customer_orders.order_id
    where runner_orders.cancellation IS NULL AND customer_orders.exclusions IS NOT NULL and customer_orders.extras IS NOT NULL