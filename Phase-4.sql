-- Phase 04

insert into Customer(national_ID,first_name,last_name,state,city,street) values ('123456781011','sherlock','holmes','London','London','212 Baker Street');
insert into customer_orders(national_ID,Orders_ID) values ('123456781011',5);
insert into customer_phone(national_ID,phone_number) values ('123456781011',' +44796268462');

update customer_phone set phone_number = '+447342780080' where national_ID = '123456781011' ;

delete from customer_orders where Orders_ID = null ;