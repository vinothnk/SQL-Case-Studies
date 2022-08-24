-- 8. What is the total items and amount spent for each member before they became a member?

with table1 as
(select menu.product_id as product_id,
       menu.price as menu_price,
       sales.customer_id as customers,
       count(sales.product_id) as cx_orders
    from menu
    join sales
    on sales.product_id = menu.product_id
    join members
    on members.customer_id = sales.customer_id
    where sales.order_date < members.join_date
    group by 1,2,3)

select customers,
       sum(cx_orders) as total_items,
       sum(menu_price * cx_orders) as total_spent
    from table1
    group by 1