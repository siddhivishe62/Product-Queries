-- 1. Create the database (if it doesn't exist)
CREATE DATABASE IF NOT EXISTS codtech_sql_task;
USE codtech_sql_task;

-- 2. Create the 'products' table
CREATE TABLE IF NOT EXISTS products (
    product_id INT,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2),
    quantity_sold INT,
    sale_date DATE
);

-- 3. Option A: Insert sample data manually (if not using CSV)
-- (optional block if CSV import fails)
-- INSERT INTO products (product_id, product_name, category, price, quantity_sold, sale_date) VALUES
-- (101, 'Laptop', 'Electronics', 800.00, 150, '2024-01-15'),
-- (102, 'Smartphone', 'Electronics', 600.00, 300, '2024-02-20'),
-- (103, 'Tablet', 'Electronics', 300.00, 120, '2024-03-10'),
-- (104, 'Monitor', 'Accessories', 200.00, 180, '2024-04-05'),
-- (105, 'Keyboard', 'Accessories', 50.00, 400, '2024-05-12');

-- 4. Option B: Load data from CSV (if secure_file_priv allows)
-- NOTE: Update path to match your system!

-- Example for Windows (check your secure_file_priv folder):
-- LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/products_data_codtech.csv'
-- INTO TABLE products
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

