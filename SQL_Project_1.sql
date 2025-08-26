
#dataset overviw
select*from customers;
select*from employees;
select*from offices;
select*from orderdetails;
select*from orders;
select*from payments;
select*from productlines;
select*from products;

use `classicmodels`;
#1Q
#List the customers in the United States with a credit limit higher than \$1000.
select*from customers where country="usa" and creditLimit>1000;
#2Q
#List the employee codes for sales representatives of customers in Spain, France and Italy.
# Make another query to list the names and email addresses of those employees.
select firstName,lastName,email from employees where employeeNumber in (1370,1337,1401,1702);
#Q3
update employees set jobTitle="Sales Representative" where jobTitle="Sales Rep";
select*from employees;
use `classicmodels`;
#Q4
select*from offices;
select*from offices where city="London";#7
select*from employees;#offices
select*from employees where officecode=7;
delete from employees where officecode=7;
#Q5
#Show a list of customers with "Toys" in their name
select customerName from customers where customerName like "%Toys%";
use `classicmodels`;

#Q1List the 5 most expensive products from the "Planes" product line
select productLine,buyPrice from products 
where productLine="Planes" order by buyPrice desc limit 5;
#Q2Identify the products that are about to run out of stock (quantity in stock < 100)
select productCode,productName,quantityInStock from products where quantityInStock<100;
#List 10 products in the "Motorcycles" category with 
#the lowest buy price and more than 1000 units in stock
select productLine,quantityInStock,buyPrice from products where productLine="Motorcycles" and
 quantityInStock order by buyPrice limit 10;
 
 #gruoping and agr fn
 use classicmodels;
 select*from employees;
 select*from payments;
 select*from orders;
 select*from customers;
 #Q1Report the total number of payments received before October 28, 2004.
 select count(customerNumber)from payments where paymentDate>"2004-10-28";
 
  #Report the number of customer who have made payments before October 28, 2004.
  select count(DISTINCT customerNumber)from payments where paymentDate>"2004-10-28";
  
#Q3Retrieve the details all customers who have made a payment before October 28, 2004
select*from payments where paymentDate>"2004-10-28";
  SELECT * FROM customers WHERE customerNumber in (SELECT DISTINCT customerNumber FROM payments WHERE paymentDate<"2004-10-28");
  #Retrieve details of all the customers in the United States who have made payments 
  -- between April 1st 2003 and March 31st 2004.
  select
 
 
 
 
 
 