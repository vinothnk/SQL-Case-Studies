-- 7. Which item was purchased just before the customer became a member?

select members.customer_id,
       sales.order_date,
       menu.product_name
    from members
    join sales
    on sales.customer_id = members.customer_id
    join menu
    on sales.product_id = menu.product_id
    where sales.order_date < members.join_date
    group by 2,1,3
    order by 1
    limit 3