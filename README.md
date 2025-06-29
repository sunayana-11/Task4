Objective

To perform data extraction and analysis using SQL on an e-commerce database consisting of Customers, Products, Orders, and Order_Items.


Tools Used:-

i)MySQL 
ii)Text Editor (for .sql file)


 Dataset Tables

1. Customers

customer_id, name, email, country


2. Products

product_id, product_name, category, price


3. Orders

order_id, customer_id, order_date, total_amount


4. Order_Items

order_item_id, order_id, product_id, quantity, price



SQL Tasks Performed

a. SELECT, WHERE, ORDER BY, GROUP BY

Retrieved total amount spent by each customer from the USA and ordered it by highest.


b. JOINS (INNER, LEFT, RIGHT)

Performed joins to link customers and orders using INNER, LEFT, and RIGHT JOINs.


c. Subqueries

Identified customers whose total order amount was above average.


d. Aggregate Functions (SUM, AVG)

Calculated total quantity and average price of each product sold.


e. Views

Created a view Monthly_Sales_Report to summarize sales month-wise.


f. Indexing

Optimized performance by creating indexes on customer_id, product_id, order_id, and country.


 Deliverables

i)ecommerce_queries.sql – contains all the SQL queries.

ii)README.md – explanation of the task.

iii)Screenshots of query outputs.
