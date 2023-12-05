SELECT
 p.quantityInStock,
 p.productLine,
 p.productName,
 pr.textDesricption,
 pr.image
FROM products p
JOIN productlines pr 
ON p.productLine = pr.productLine
LIMIT 10;


SELECT 
 o.customerNumber,
 o.orderNumber,
 p.amount,
 p.paymentDate
FROM orders o
JOIN payments p 
ON o.customerNumber = p.customerNumber
LIMIT 10;
 

 
SELECT 
jebi_c.customerName,
jebi_c.phone,
ian_o.orderDate,
ian_p.amount,
ian_p.paymentDate
FROM ian.orders AS ian_o 
JOIN jebi.customers AS jebi_c ON ian_o.customerNumber = jebi_c.customerNumber
JOIN ian.payments AS ian_p ON jebi_c.customerNumber = ian_p.customerNumber
LIMIT 10;




customers = jebi
employess = jebi
orders = ian

SELECT
jebi_e.firstName,
jebi_e.email,
jebi_c.customerNumber,
jebi_c.city,
ian_o.status
FROM jebi.employees AS jebi_e
JOIN jebi.customers AS jebi_c ON jebi_e.employeeNumber = jebi_c.salesRepEmployeeNumber
JOIN ian.orders AS ian_o ON jebi_c.customerNumber = ian_o.customerNumber
LIMIT 10;









 
