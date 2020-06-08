
create table customer_order_count 
(
    customernumber int not null,
    ordercount int not null, 
    primary key (customernumber), 
    foreign key (customernumber) references customers(customernumber)
);


insert into customer_order_count 
(select customernumber, 
count(orderNumber) as orderCount 
from orders group by customerNumber);

if not exists (select 1 from ordercount where customerNumber=NEW.customerNumber)
    begin
    insert into ordercount values(NEW.customerNumber,0);
    end;



drop trigger customer_order_count_update;

create trigger customer_order_count_update after insert on orders
  for each row
  begin

  if not exists (select 1 from ordercount where customerNumber=NEW.customerNumber)
  then
    begin
    insert into ordercount values(NEW.customerNumber,0);
    end;
    end if;

     update ordercount
     SET ordercount = ordercount+1
     WHERE customerNumber = NEW.customerNumber;
  END;
