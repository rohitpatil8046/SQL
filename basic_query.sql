--CREATE DATABASE CUSTOMER;

USE CUSTOMER;

/*create table customer_details
(
cust_id int PRIMARY KEY NOT NULL,
cust_name varchar(20) not null,
cust_age int,
cust_address varchar(50)

);
*/

select * from customer_details;

INSERT INTO customer_details values(105,'vaibhav',25,'Banglore') , (106,'nikhil',30,'badlapur');

select * from customer_details where cust_name IN ('Rohit','vaibhav');

select * from customer_details where cust_name like '%l' and cust_address like '%MUM%';

select * from customer_details where cust_age between 22 and 23;

select cust_name as CUST_NAME from customer_details ;

select  max(cust_age) as MAXIMUM_AGE from customer_details;

select count(cust_name)  from customer_details where cust_address like '%pune%';


select distinct cust_age as age from customer_details ;
