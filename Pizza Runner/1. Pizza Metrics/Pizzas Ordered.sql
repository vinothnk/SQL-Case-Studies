-- 1. How many pizzas were ordered?

select count(order_id) as orders       
    from customer_orders