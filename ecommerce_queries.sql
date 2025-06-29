SELECT c.name, c.country, SUM(o.total_amount) AS total_spent FROM Customers c JOIN Orders o ON c.customer_id = o.customer_id WHERE c.country = 'USA' GROUP BY c.customer_id, c.name, c.country ORDER BY total_spent DESC;


SELECT o.order_id, c.name, o.order_date, o.total_amount FROM Orders o INNER JOIN Customers c ON o.customer_id = c.customer_id;


SELECT c.name, o.order_id, o.total_amount FROM Customers c LEFT JOIN Orders o ON c.customer_id = o.customer_id;


SELECT o.order_id, c.name, o.total_amount FROM Orders o RIGHT JOIN Customers c ON o.customer_id = c.customer_id;


SELECT name FROM Customers WHERE customer_id IN ( SELECT customer_id FROM Orders WHERE total_amount > ( SELECT AVG(total_amount) FROM Orders));


SELECT p.product_name, SUM(oi.quantity) AS total_quantity, AVG(oi.price) AS average_price FROM Order_Items oi JOIN Products p ON oi.product_id = p.product_id GROUP BY p.product_id, p.product_name;


CREATE VIEW Monthly_Sales_Report AS SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(total_amount) AS total_sales FROM Orders GROUP BY month;


CREATE INDEX idx_customer_id ON Orders(customer_id); 

CREATE INDEX idx_product_id ON Order_Items(product_id);

CREATE INDEX idx_order_id ON Order_Items(order_id);

CREATE INDEX idx_country ON Customers(country);