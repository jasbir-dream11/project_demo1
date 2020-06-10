
--created index to boost performance of search query in payments table on newly added col.

CREATE INDEX idx_ordersNumber
ON payments (orderNumber);



select
customers.customerName, 
orders.orderNumber, 
orders.shippedDate,
payments.paymentDate, 
payments.amount, 
orderdetails.quantityOrdered, 
products.productName, 
productlines.image
from
products, 
productlines, 
orderdetails,
orders,
payments, 
customers
where
customers.customerNumber=500
and orders.customerNumber=500
and payments.orderNumber=orders.orderNumber
and orderdetails.orderNumber=orders.orderNumber
and products.productCode=orderdetails.productCode
and productlines.productLine=products.productLine;






