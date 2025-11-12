create database SchoolDB;
use SchoolDB;
show databases;
create table student(
studentID int primary key,
first_Name varchar(50),
last_Name varchar(50),
dob date,
age varchar(50),
gender varchar(10),
grade varchar(50),
phone_number varchar(50),
address varchar(50)
);
desc student; 
