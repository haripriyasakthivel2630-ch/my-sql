CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    event_name VARCHAR(50),
    event_date DATE
);


INSERT INTO orders (order_id, product_name, quantity, price, event_name, event_date) VALUES
(1, 'Apple Juice', 3, 150, 'Party', '2024-10-10'),
(2, 'Banana Shake', 1, 80, 'Meeting', '2024-11-05'),
(3, 'Almond Milk', 5, 450, 'Festival', '2024-12-01'),
(4, 'Mango Juice', 2, 250, 'Function', '2024-12-15'),
(5, 'Avocado Smoothie', 4, 520, 'Celebration', '2024-12-20');


SELECT * FROM orders
WHERE quantity > 2;


SELECT * FROM orders
WHERE price BETWEEN 100 AND 500;


SELECT * FROM orders
WHERE product_name LIKE 'A%';


SELECT * FROM orders
ORDER BY quantity DESC;