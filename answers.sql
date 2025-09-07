-- Details from employees table
SELECT firstName, lastName, email, officeCode
from employees

-- inner join, combining  offices table and employee table
SELECT e.employeeNumber, e.lastName, e.firstName, e.extension, e.email, e.officeCode, e.reportsTo, e.jobTitle,
 o.officeCode, o.city, o.phone, o.addressLine1, o.addressLine2, o.state, o.country, o.postalCode, o.territory
 from employees e
 inner join offices o
 on e.officeCode = o.officeCode;


 -- Details from products table
 select productName, productVendor, productline
from products


-- combining products table and productLines table using left join
SELECT p.productCode, p.productName, p.productLine, p.productScale, p.productVendor, p.productDescription,
 pl.productLine, pl.textDescription, pl.htmlDescription, pl.image
 from products p
 left join productlines pl
 on p.productLine = pl.productLine

 

-- first 10 details from orders table ordered by orderDate in ascending order
select orderDate, shippedDate, status, customerNumber
from orders
order by orderDate ASC
LIMIT 10;

-- combining customers and orders table using right join
SELECT c.customerNumber, c.customerName, c.contactLastName, c.contactFirstName, c.phone, c.AddressLine1, c.addressLine2, c.city, c.state, 
c.postalCode, c.country, c.salesRepEmployeeNumber, c.creditLimit, o.orderNumber, o.orderDate, o.requiredDate, o.shippedDate, o.status, o.comments, o.customerNumber
from customers c
right join orders o
on c.customerNumber = o.customerNumber
