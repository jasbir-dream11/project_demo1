alter table payments
add column orderNumber int(11) not null default 10100,
add constraint FK_orderNumber_payments foreign key(orderNumber)
references orders(orderNumber);
