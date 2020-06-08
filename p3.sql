start transaction;

INSERT INTO customers(customerNumber, customerName,contactfirstname,contactlastname,addressLine1, salesRepEmployeeNumber,phone,city,country) values (500,'Jasbir','jasbir','singh','H.No 93',1002,'9836416365','karnal','india');

INSERT INTO orders(orderNumber,orderDate,requiredDate,status,customerNumber) values (40000, "2020-06-08","2020-06-10","Booked", 500);

INSERT INTO orderdetails values (40000, 'S10_1678', 1, 48.81, 5);

INSERT INTO payments values (500, 'CHECK_1000', "2020-06-08", 50.00, 40000);


commit;