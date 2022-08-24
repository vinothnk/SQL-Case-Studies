-- 3. What was the first item from the menu purchased by each customer?

select sales.customer_id,
       menu.product_name
    from sales
    join menu
    on menu.product_id = sales.product_id
    where sales.order_date = '2021-01-01'
    group by 1,2
    order by 1 ASC