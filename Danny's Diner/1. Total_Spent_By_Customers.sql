-- 1.What is the total amount each customer spent at the restaurant?

-- 1st step - count how many of each item each customer bought
-- 2nd step - add those up

with table1 as
(select menu.product_id as product_id,
       menu.price as menu_price,
       sales.customer_id as customers,
       count(sales.product_id) as cx_orders
    from menu
    join sales
    on sales.product_id = menu.product_id
    group by 1,2,3)

select customers,
       sum(menu_price * cx_orders) as total_spent
    from table1
    group by 1
    ORDER BY 1