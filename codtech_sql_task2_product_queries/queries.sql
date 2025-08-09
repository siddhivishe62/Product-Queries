# Display all rows
SELECT * FROM codetech_sql_task.products_data_codtech;
# Top-selling products
SELECT product_name, quantity_sold
FROM products_data_codtech
ORDER BY quantity_sold DESC;
# Total revenue per category
SELECT category, SUM(price * quantity_sold) AS total_revenue
FROM products_data_codtech
GROUP BY category;
# Products sold after March 2024
SELECT *
FROM products_data_codtech
WHERE sale_date > '2024-03-01';
#Show all products that sold more than 150 units.
SELECT product_name, quantity_sold 
FROM products_data_codtech
WHERE quantity_sold >= 150;
# Show total quantity sold for each category.
SELECT category ,sum(quantity_sold) AS total_quantity
FROM products_data_codtech
GROUP BY category;
# Show product(s) with the highest price.
SELECT * FROM products_data_codtech 
WHERE price = (select max(price) from products_data_codtech);
# Show total revenue for each product.
SELECT product_name, SUM(price * quantity_sold) as revenue
FROM products_data_codtech
GROUP BY product_name;
# Show all products sold after March 1, 2024.
SELECT * FROM products_data_codtech
WHERE sale_date >=  '2024-03-01';
# Total quantity sold
SELECT SUM(quantity_sold) AS total_sold FROM products_data_codtech;
# Total revenue for each product.
SELECT (price * quantity_sold) AS total_revenue FROM products_data_codtech;
# Group by sale_date
SELECT sale_date, SUM(price * quantity_sold) AS daily_revenue
FROM products_data_codtech
GROUP BY sale_date
ORDER BY sale_date;