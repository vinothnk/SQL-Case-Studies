-- 6. What was the maximum number of pizzas delivered in a single order?

with no_of_pizzas as
(select order_id,
       count(pizza_id) as qty_pizzas
   from customer_orders
   group by 1)
   
select max(qty_pizzas) as max_no_of_pizzas
    from no_of_pizzas