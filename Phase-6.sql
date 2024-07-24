-- Phase 06

alter table car add is_sold varchar(50) default 'false';
update car set is_sold = 'true' where VIN in (select v from (select vin as v from car,customer_orders where car.Orders_ID = customer_orders.Orders_ID ) AS C ) ;

start transaction
update customer_orders set national_ID = '121311313114' where Orders_ID in (select id from(select car.Orders_ID as id from customer_orders,car where car.Orders_id = customer_orders.orders_id and is_sold = 'false') as x);
rollback

start transaction
update customer_orders set national_ID = '121311313114' where Orders_ID in (select id from(select spares.Orders_ID as id from customer_orders,spares where spares.Orders_id = customer_orders.orders_id and spares.name = 'battery') as y);
update spares set count = count -1 where name = 'battery' ;
rollback