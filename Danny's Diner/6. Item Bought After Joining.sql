-- 6. Which item was purchased first by the customer after they became a member?

select DISTINCT members.customer_id,
       sales.order_date,
       menu.product_name
    from members
    join sales
    on sales.customer_id = members.customer_id
    join menu
    on sales.product_id = menu.product_id
    where sales.order_date >= members.join_date
    GROUP BY 2,1,3
    ORDER BY 2