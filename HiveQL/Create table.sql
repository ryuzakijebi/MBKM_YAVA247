CREATE EXTERNAL TABLE IF NOT EXISTS customers (
  customerNumber INT,
  customerName STRING,
  contactLastName STRING,
  contactFirstName STRING,
  phone STRING,
  addressLine1 STRING,
  addressLine2 STRING,
  city STRING,
  state STRING,
  postalCode STRING,
  country STRING,
  salesRepEmployeeNumber INT,
  creditLimit DECIMAL(10,2)
)
COMMENT 'Customer details'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tmp/jebi/customers/'
TBLPROPERTIES ("skip.header.line.count"="1", "skip.footer.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS employees (
  employeeNumber INT,
  lastName STRING,
  firstName STRING,
  extension STRING,
  email STRING,
  officeCode STRING,
  reportsTo INT,
  jobTitle STRING
)
COMMENT 'Employee details'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tmp/jebi/employees/'
TBLPROPERTIES ("skip.header.line.count"="1", "skip.footer.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS offices (
  officeCode STRING,
  city STRING,
  phone STRING,
  addressLine1 STRING,
  addressLine2 STRING,
  state STRING,
  country STRING,
  postalCode STRING,
  territory STRING
)
COMMENT 'Office details'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tmp/jebi/offices/'
TBLPROPERTIES ("skip.header.line.count"="1", "skip.footer.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS orderdetails (
  orderNumber INT,
  productCode STRING,
  quantityOrdered INT,
  priceEach DECIMAL(10,2),
  orderLineNumber SMALLINT
)
COMMENT 'Order details'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tmp/jebi/orderdetails/'
TBLPROPERTIES ("skip.header.line.count"="1", "skip.footer.line.count"="1");


SELECT c.customerNumber, c.customerName, e.employeeNumber, e.lastName, e.firstName
FROM customers c
JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
JOIN offices o ON e.officeCode = o.officeCode;



CREATE EXTERNAL TABLE IF NOT EXISTS orderdetails (
  orderNumber INT,
  productCode STRING,
  quantityOrdered INT,
  priceEach DECIMAL(10,2),
  orderLineNumber SMALLINT
  



-- Tabel orders
CREATE EXTERNAL TABLE IF NOT EXISTS orders (
  orderNumber INT,
  orderDate STRING,
  requiredDate STRING,
  shippedDate STRING,
  status STRING,
  comments STRING,
  customerNumber INT
)
COMMENT 'Order details'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tmp/jebi/orders/'
TBLPROPERTIES ("skip.header.line.count"="1", "skip.footer.line.count"="1");

-- Tabel payments
CREATE EXTERNAL TABLE IF NOT EXISTS payments (
  customerNumber INT,
  checkNumber STRING,
  paymentDate STRING,
  amount DECIMAL(10,2)
)
COMMENT 'Payment details'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tmp/jebi/payments/'
TBLPROPERTIES ("skip.header.line.count"="1", "skip.footer.line.count"="1");

-- Tabel productlines
CREATE EXTERNAL TABLE IF NOT EXISTS productlines (
  productLine STRING,
  textDescription STRING,
  htmlDescription STRING,
  image BINARY
)
COMMENT 'Product Line details'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tmp/jebi/productlines/'
TBLPROPERTIES ("skip.header.line.count"="1", "skip.footer.line.count"="1");

-- Tabel products
CREATE EXTERNAL TABLE IF NOT EXISTS products (
  productCode STRING,
  productName STRING,
  productLine STRING,
  productScale STRING,
  productVendor STRING,
  productDescription STRING,
  quantityInStock INT,
  buyPrice DECIMAL(10,2),
  MSRP DECIMAL(10,2)
)
COMMENT 'Product details'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/tmp/jebi/products/'
TBLPROPERTIES ("skip.header.line.count"="1", "skip.footer.line.count"="1");
