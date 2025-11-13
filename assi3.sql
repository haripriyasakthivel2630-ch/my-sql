create database companyDB;
use companyDB;
show databases;
create table employee(
emp_id int primary key,
emp_name varchar(50),
emp_salary int default 3000,
emp_email varchar(100)
);
desc employee;
alter table empolyee add constraint unique_email
unique(emp_email);
desc employee;
use companyDB;
create table product(
id varchar(100),
name varchar(100),
price int
);
desc product;
alter table product add stock int;
alter table product change price unit_price int;
desc product;
