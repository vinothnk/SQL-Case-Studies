-- 10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi
-- - how many points do customer A and B have at the end of January?

select SALES.CUSTOMER_ID,
       SUM(MENU.price * CASE WHEN MENU.product_name = 'sushi' THEN 20 ELSE 10 END) AS TOTAL_POINTS
    FROM SALES
    JOIN MENU
    ON SALES.PRODUCT_ID = MENU.PRODUCT_ID
    JOIN MEMBERS
    ON MEMBERS.CUSTOMER_ID = SALES.CUSTOMER_ID
    AND SALES.ORDER_DATE > MEMBERS.JOIN_DATE
    GROUP BY 1