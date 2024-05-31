-- Drop existing tables if they exist
IF OBJECT_ID('ord', 'U') IS NOT NULL
    DROP TABLE ord;

IF OBJECT_ID('cus', 'U') IS NOT NULL
    DROP TABLE cus;

-- Create customers table
CREATE TABLE cus (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    join_date DATE
);

-- Insert sample records into customers table
INSERT INTO cus (customer_id, name, email, join_date)
VALUES
    (1, 'Ravindu', 'ravindu@gmail.com', '2023-01-15'),
    (2, 'Anupama', 'anu@gmail.com', '2022-11-20'),
    (3, 'Nikini', 'nikini@gmail.com', '2023-03-10'),
    (4, 'Tharindu', 'thari@gmail.com', '2023-05-05'),
    (5, 'Dinith', 'dinith@gmail.com', '2023-02-28'),
    (6, 'Chanuka', 'chanuka@gmail.com', '2022-12-10'),
    (7, 'Hasini', 'hasini@gmail.com', '2023-04-15'),
    (8, 'Anjana', 'anjana@gmail.com', '2023-06-20'),
    (9, 'Mothila', 'mothila@gmail.com', '2023-04-05'),
    (10, 'Hemaka', 'hemaka@gmail.com', '2023-03-25');

-- Create orders table
CREATE TABLE ord (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES cus(customer_id)
);

-- Insert sample records into orders table
INSERT INTO ord (order_id, customer_id, order_date, total_amount)
VALUES
    (1, 1, '2023-01-20', 2550.00),
    (2, 2, '2023-04-05', 9575.00),
    (3, 1, '2023-02-10', 10120.00),
    (4, 3, '2023-03-20', 6090.00),
    (5, 4, '2023-05-10', 2260.00),
    (6, 2, '2023-01-30', 135100.00),
    (7, 1, '2023-04-05', 80085.00),
    (8, 5, '2023-03-15', 465110.00),
    (9, 3, '2023-05-25', 70000.00),
    (10, 4, '2023-02-05', 95520.00),
    (11, 5, '2023-05-28', 84650.00),
    (12, 6, '2023-04-10', 61150.00),
    (13, 7, '2023-03-05', 55000.00),
    (14, 8, '2023-05-15', 12500.00),
    (15, 9, '2023-06-02', 10500.00),
    (16, 10, '2023-06-20', 65490.00),
    (17, 1, '2023-06-25', 75040.00),
    (18, 2, '2023-04-20', 85000.00),
    (19, 3, '2023-03-15', 94205.00),
    (20, 4, '2023-06-05', 11200.00);

-- Query to display the newly created tables
SELECT * FROM cus;
SELECT * FROM ord;
