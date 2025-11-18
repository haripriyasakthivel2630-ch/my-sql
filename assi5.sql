create database customerDB;
use customerDB;
show databases;
create table customers01(
customer_id int primary key,
customer_name varchar(50),
city varchar(100)
);
create table orders02 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers01(customer_id)
);
INSERT INTO customers01(customer_id, customer_name, city) VALUES
(1,'Priya','chennai'),
(2,'Hari','pune'),
(3,'Rahul','vellore'),
(4,'Neha','kolkata');

INSERT INTO orders02(order_id, customer_id, product_name, amount) VALUES
(101, 1, 'Laptop', 50000),
(102, 2, 'Phone', 25000),
(103, 3, 'Headphones', 1500),
(104, 4, 'Mouse', 500);
select
customers01.customer_name,
orders02.product_name,
orders02.amount
from customers01
inner join orders02
on customers01.customer_id = orders02.customer_id;
select
customers01.customer_name,
orders02.product_name,
orders02.amount
from customers01
Left join orders02
on customers01.customer_id = orders02.customer_id;

