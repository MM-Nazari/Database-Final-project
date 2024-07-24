-- Phase 03

-- customer
insert into Customer(national_ID,first_name,last_name,state,city,street) values ('042-92-1234','Ryan','Eugene','NY','Albany','West Virginia Avenue');
insert into Customer(national_ID,first_name,last_name,state,city,street) values ('419-46-XXXX','David','J. Robertson','AL','Birmingham','1655 Broad Street');
insert into Customer(national_ID,first_name,last_name,state,city,street) values ('010-10-XXXX','Daniel','M. Pitts','MA','Cambridge','1957 Joanne Lane');
insert into Customer(national_ID,first_name,last_name,state,city,street) values ('502-90-XXXX','Jonathan','M. Dietrich','ND','Nekoma','455 Findley Avenue');
insert into Customer(national_ID,first_name,last_name,state,city,street) values ('464-48-XXXX','Ayan','Augene','NY','Albany','West Virginia Avenue');
insert into Customer(national_ID,first_name,last_name,state,city,street) values ('552-14-XXXX','Byan','Bugene','NY','Albany','West Virginia Avenue');
insert into Customer(national_ID,first_name,last_name,state,city,street) values ('461-92-XXXX','Ryan','Eugene','AB','Albany','West Virginia Avenue');
insert into Customer(national_ID,first_name,last_name,state,city,street) values ('012-92-1234','Ryan','Eugene','NY','Blbany','West Virginia Avenue');
insert into Customer(national_ID,first_name,last_name,state,city,street) values ('022-92-1234','Ryan','Eugene','YY','Albany','West Virginia Avenue');
insert into Customer(national_ID,first_name,last_name,state,city,street) values ('032-92-1234','Ryan','Egene','NY','Albany','West Virginia Avenue');

-- customer order
insert into customer_orders(national_ID,Orders_ID) values ('012-92-1234',1);
insert into customer_orders(national_ID,Orders_ID) values ('022-92-1234',2);
insert into customer_orders(national_ID,Orders_ID) values ('032-92-1234',3);
insert into customer_orders(national_ID,Orders_ID) values ('461-92-XXXX',4);
insert into customer_orders(national_ID,Orders_ID) values ('552-14-XXXX',5);
insert into customer_orders(national_ID,Orders_ID) values ('464-48-XXXX',6);
insert into customer_orders(national_ID,Orders_ID) values ('502-90-XXXX',7);
insert into customer_orders(national_ID,Orders_ID) values ('010-10-XXXX',8);
insert into customer_orders(national_ID,Orders_ID) values ('419-46-XXXX',9);
insert into customer_orders(national_ID,Orders_ID) values ('042-92-1234',10);

-- customer phone
insert into customer_phone(national_ID,phone_number) values ('042-92-1234','636-614-3352');
insert into customer_phone(national_ID,phone_number) values ('419-46-XXXX','636-614-3252');
insert into customer_phone(national_ID,phone_number) values ('010-10-XXXX','637-614-3352');
insert into customer_phone(national_ID,phone_number) values ('502-90-XXXX','226-614-3352');
insert into customer_phone(national_ID,phone_number) values ('464-48-XXXX','226-614-3322');
insert into customer_phone(national_ID,phone_number) values ('552-14-XXXX','611-614-3352');
insert into customer_phone(national_ID,phone_number) values ('461-92-XXXX','612-614-3352');
insert into customer_phone(national_ID,phone_number) values ('012-92-1234','613-614-3352');
insert into customer_phone(national_ID,phone_number) values ('022-92-1234','614-614-3352');
insert into customer_phone(national_ID,phone_number) values ('032-92-1234','615-614-3352');

-- supplier
insert into Supplier(ID,first_name,last_name,start_date,end_date,manager,state,city,street) values (1,'Charles','D. Barrows','21/01/2012','12/12/2022','Jackson','TN','Chattanooga','4026 Corbin Branch Road');
insert into Supplier(ID,first_name,last_name,start_date,end_date,manager,state,city,street) values (2,'Muriel','A. Bunting','1/01/2011','12/12/2032','Ackson','NN','Chattanooga','4027 Corbin Branch Road');
insert into Supplier(ID,first_name,last_name,start_date,end_date,manager,state,city,street) values (3,'Paul','A. Allen','1/01/2001','12/12/2002','Ason','AA','Chaanooga','4097 Corbin Branch Road');
insert into Supplier(ID,first_name,last_name,start_date,end_date,manager,state,city,street) values (4,'Muriel','A. Bunting','1/01/2014','12/12/2132','Alisson','NM','Canooga','4827 Corbin Branch Road');

-- orders
insert into Orders(ID,Type) values (1,'spare');
insert into Orders(ID,Type) values (2,'spare');
insert into Orders(ID,Type) values (3,'car');
insert into Orders(ID,Type) values (4,'car');
insert into Orders(ID,Type) values (5,'car');
insert into Orders(ID,Type) values (6,'car');
insert into Orders(ID,Type) values (7,'car');
insert into Orders(ID,Type) values (8,'car');
insert into Orders(ID,Type) values (9,'car');
insert into Orders(ID,Type) values (10,'car');

-- spares
insert into Spares(ID,name,count,Orders_ID,Supplier_ID) values (1,'battery',2,1,1);
insert into Spares(ID,name,count,Orders_ID,Supplier_ID) values (2,'crankcase',1,2,1);
insert into Spares(ID,name,count,Orders_ID,Supplier_ID) values (3,'belt drive',10,2,2);
insert into Spares(ID,name,count,Orders_ID,Supplier_ID) values (4,'camshaft',3,1,2);
insert into Spares(ID,name,count,Orders_ID,Supplier_ID) values (5,'seal',1,1,3);
insert into Spares(ID,name,count,Orders_ID,Supplier_ID) values (6,'gasket',1,2,3);
insert into Spares(ID,name,count,Orders_ID,Supplier_ID) values (7,'v-belt',22,1,4);
insert into Spares(ID,name,count,Orders_ID,Supplier_ID) values (8,'cylender',1,1,4);

-- spare price
insert into Spares_Price(title,price) values ('battery','25$');
insert into Spares_Price(title,price) values ('crankcase','255$');
insert into Spares_Price(title,price) values ('belt drive','5$');
insert into Spares_Price(title,price) values ('camshaft','225$');
insert into Spares_Price(title,price) values ('seal','25$');
insert into Spares_Price(title,price) values ('gasket','11$');
insert into Spares_Price(title,price) values ('v-belt','22$');
insert into Spares_Price(title,price) values ('cylender','26$');

-- car
insert into Car(VIN,Orders_ID) values (12345678,3);
insert into Car(VIN,Orders_ID) values (11145678,4);
insert into Car(VIN,Orders_ID) values (12245678,4);
insert into Car(VIN,Orders_ID) values (12545678,5);
insert into Car(VIN,Orders_ID) values (15545678,5);
insert into Car(VIN,Orders_ID) values (15645678,6);
insert into Car(VIN,Orders_ID) values (12745678,7);
insert into Car(VIN,Orders_ID) values (12845678,7);
insert into Car(VIN,Orders_ID) values (99945678,8);
insert into Car(VIN,Orders_ID) values (10045678,8);
insert into Car(VIN,Orders_ID) values (12045678,9);
insert into Car(VIN,Orders_ID) values (22245678,10);

-- brand
insert into brand(VIN,Name) values (12345678,'Dena');
insert into brand(VIN,Name) values (11145678,'Dena');
insert into brand(VIN,Name) values (12245678,'Dena');
insert into brand(VIN,Name) values (12545678,'Dena');
insert into brand(VIN,Name) values (15545678,'Dena');
insert into brand(VIN,Name) values (15645678,'Dena');
insert into brand(VIN,Name) values (12745678,'Tara');
insert into brand(VIN,Name) values (12845678,'Tara');
insert into brand(VIN,Name) values (99945678,'Tara');
insert into brand(VIN,Name) values (10045678,'Tara');
insert into brand(VIN,Name) values (12045678,'Tara');
insert into brand(VIN,Name) values (22245678,'Tara');

-- model
insert into Model(VIN,Name) values (12345678,'Tip 1');
insert into Model(VIN,Name) values (11145678,'Tip 1');
insert into Model(VIN,Name) values (12245678,'Tip 1');
insert into Model(VIN,Name) values (12545678,'Tip 2');
insert into Model(VIN,Name) values (15545678,'Tip 2');
insert into Model(VIN,Name) values (15645678,'Tip 2');
insert into Model(VIN,Name) values (12745678,'Tip 3');
insert into Model(VIN,Name) values (12845678,'Tip 3');
insert into Model(VIN,Name) values (99945678,'Tip 3');
insert into Model(VIN,Name) values (10045678,'Tip 4');
insert into Model(VIN,Name) values (12045678,'Tip 4');
insert into Model(VIN,Name) values (22245678,'Tip 4');

-- option
insert into options(VIN,color,gearbox_type) values (12345678,'red','auto');
insert into options(VIN,color,gearbox_type) values (11145678,'red','manual');
insert into options(VIN,color,gearbox_type) values (12245678,'black','auto');
insert into options(VIN,color,gearbox_type) values (12545678,'white','auto');
insert into options(VIN,color,gearbox_type) values (15545678,'black','auto');
insert into options(VIN,color,gearbox_type) values (15645678,'red','auto');
insert into options(VIN,color,gearbox_type) values (12745678,'red','manual');
insert into options(VIN,color,gearbox_type) values (12845678,'blue','auto');
insert into options(VIN,color,gearbox_type) values (99945678,'red','auto');
insert into options(VIN,color,gearbox_type) values (10045678,'pink','auto');
insert into options(VIN,color,gearbox_type) values (12045678,'red','auto');
insert into options(VIN,color,gearbox_type) values (22245678,'green','auto');

