-- Write your SQL queries here

1.SELECT * FROM customers WHERE country = 'USA';

2.SELECT country, COUNT(*) 
FROM customers 
GROUP BY country 
ORDER BY COUNT(*) DESC;

3.SELECT o.order_id, c.name
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;

4.SELECT * FROM products
WHERE price > (SELECT AVG(price) FROM products);

5.SELECT category, AVG(price) 
FROM products 
GROUP BY category;


6.CREATE VIEW simple_order_view AS
SELECT
    c.name AS customer_name,
    p.name AS product_name,
    o.order_date
FROM
    orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;

SELECT * FROM simple_order_view;
