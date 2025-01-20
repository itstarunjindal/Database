ques: Calculate the total sales amount for each order by summing the product price and quantity for each order item.

SELECT o.order_id,
       SUM(oi.quantity * p.price) AS total_sales_amount
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY o.order_id;


ques: Find all customers who placed an order in the last 30 days.

SELECT DISTINCT c.customer_id, c.customer_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_date >= current_date - INTERVAL '30 days';
